#!/bin/bash
#
# A simple script to enable regnerating of the Swift sources files should the BitRise API swagger document change. 
#
# NOTE: Any changes will be ready to commit and push in the repository root directory once this has been run. For that
#       reason, this script must be run from the local working copy directory.
#
TEMP_DIR=~/.gentemp
PROJECT_NAME="BitriseAPI"

# Create a temp dir to work in (to keep things tidy)
#
rm -rf $TEMP_DIR
mkdir $TEMP_DIR

# Generate the Swift 5 source files
#
swagger-codegen generate -i https://api-docs.bitrise.io/docs/swagger.json -l swift5 --additional-properties projectName="$PROJECT_NAME" -o $TEMP_DIR

# Move everything around and back into the packaged folder structure
#
cp -Rf "$TEMP_DIR/$PROJECT_NAME/Classes/Swaggers/" "./Sources/$PROJECT_NAME"

# Finally clean up
#
rm -rf $TEMP_DIR