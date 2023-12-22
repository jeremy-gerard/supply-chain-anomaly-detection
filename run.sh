#!/bin/bash

unzip model/\*.zip -d ./model
unzip data/\*.zip -d ./data

pip install poetry
poetry install

export PYDEVD_DISABLE_FILE_VALIDATION=1
poetry run jupyter nbconvert --to html --template lab --execute main.ipynb

open main.html
