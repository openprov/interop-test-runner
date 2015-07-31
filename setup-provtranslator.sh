#!/bin/bash

echo "Getting ProvPy package for use as a comparator..."
pip install prov
prov-compare --version

echo "Creating local configuration..."
cd interop-test-harness
cp -r config localconfig
python prov_interop/set_yaml_value.py localconfig/harness.yaml test-cases="$TRAVIS_BUILD_DIR/testcases"
