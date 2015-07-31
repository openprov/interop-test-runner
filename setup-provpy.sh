#!/bin/bash

echo "Getting ProvPy source code..."
git clone https://github.com/trungdong/prov ProvPy
cd ProvPy
python setup.py install
./scripts/prov-convert --version
./scripts/prov-compare --version
PROVPY_CONVERT="python $TRAVIS_BUILD_DIR/ProvPy/scripts/prov-convert"
PROVPY_COMPARE="python $TRAVIS_BUILD_DIR/ProvPy/scripts/prov-compare"
cd ..

echo "Creating local configuration..."
cd interop-test-harness
cp -r config localconfig
python prov_interop/set_yaml_value.py localconfig/harness.yaml test-cases="$TRAVIS_BUILD_DIR/testcases"
# Default configuration assumes ProvPy binaries - override executables
python prov_interop/set_yaml_value.py localconfig/provpy.yaml ProvPy.executable="$PROVPY_CONVERT"
python prov_interop/set_yaml_value.py localconfig/harness.yaml comparators.ProvPyComparator.executable="$PROVPY_COMPARE"
