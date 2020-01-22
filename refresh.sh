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
mkdir $TEMP_DIR

# Generate the Swift 5 source files
#
swagger-codegen generate -i https://api-docs.bitrise.io/docs/swagger.json -l swift5 --additional-properties projectName="$PROJECT_NAME" -o $TEMP_DIR

# Move everything around and back into the packaged folder structure
#
mv -f "$TEMP_DIR/$PROJECT_NAME/Classes/" "$TEMP_DIR/$PROJECT_NAME/Sources/"
mv -f "$TEMP_DIR/$PROJECT_NAME/Sources/Swaggers" "$TEMP_DIR/$PROJECT_NAME/Sources/$PROJECT_NAME"
cp -Rf "$TEMP_DIR/$PROJECT_NAME/Sources" ./Sources

# Finally clean up
#
 rm -rf $TEMP_DIR