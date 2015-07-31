#!/bin/bash

echo "Getting test cases..."
git clone https://github.com/prov-suite/testcases testcases

echo "Getting test harness..."
git clone https://github.com/prov-suite/interop-test-harness
cd interop-test-harness
pip install -r requirements.txt
cd ..
