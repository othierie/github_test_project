#!/bin/bash

echo "Executing Static Analysis"
python -u -m mypy *py 
flake8 --max-line-length=300 *.py 
echo "executing tests" 
pytest 
echo "Testing Complete"
