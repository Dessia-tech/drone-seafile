#!/bin/sh

upload_link=`curl -H "Authorization: Token ${PLUGIN_SEAFILE_TOKEN}" "${PLUGIN_SERVER_URL}/api2/repos/${PLUGIN_REPO_ID}/upload-link/" | sed -e 's/^"//' -e 's/"$//'`
for filename in $PLUGIN_FILES; do
    echo "uploading ${filename}";
    curl -H "Authorization: Token ${PLUGIN_SEAFILE_TOKEN}" -F file="@${filename}" -F parent_dir=$PLUGIN_ROOT_DIRECTORY  -F replace=1  $upload_link
done
