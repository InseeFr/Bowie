#!/bin/bash

WORK_DIR="/home/onyxia/work"
REPO_URL="https://github.com/romaintailhurat/Bowie.git"
REPO_DIR="${WORK_DIR}/Bowie"

curl -sSL https://install.python-poetry.org | python3 -
export PATH="/home/onyxia/.local/bin:$PATH"

cd $WORK_DIR
git clone $REPO_URL

cd $REPO_DIR
git switch pages

poetry install