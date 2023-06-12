rm -rf ./docs

cd ./bowiedocs

poetry run mkdocs build

mv site ../docs