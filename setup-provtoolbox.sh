#!/bin/bash

echo "Getting ProvToolbox source code..."
git clone https://github.com/lucmoreau/ProvToolbox.git ProvToolbox
cd ProvToolbox
mvn clean install
./toolbox/target/appassembler/bin/provconvert -version
PROVTOOLBOX_CONVERT=$TRAVIS_BUILD_DIR/ProvToolbox/toolbox/target/appassembler/bin/provconvert
cd ..

echo "Getting ProvPy package for use as a comparator..."
pip install prov
prov-compare --version

echo "Creating local configuration ..."
cd interop-test-harness
cp -r config localconfig
python prov_interop/set_yaml_value.py localconfig/harness.yaml test-cases="$TRAVIS_BUILD_DIR/testcases"
python prov_interop/set_yaml_value.py localconfig/provtoolbox.yaml ProvToolbox.executable="$PROVTOOLBOX_CONVERT"
