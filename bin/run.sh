#!/bin/bash

script="$0"
FOLDER="$(pwd)/$(dirname $script)"

source $FOLDER/utils.sh
PROJECT_ROOT="$(abspath $FOLDER/..)"
echo "project root folder $PROJECT_ROOT"

echo "build docker image"
/bin/bash $FOLDER/build.sh

##### CONFIG #####

TEMPLATE_DIR=$PROJECT_ROOT/templates
OUTPUT_DIR=$PROJECT_ROOT/outputs

##### RUN #####
echo "Starting container..."

docker run --rm \
           -it \
           dominicbreuker/nikto_docker:latest
