#!/bin/sh

if [ -z $PLUGIN_SEAFILE_TOKEN ]
then
	echo "seafile token not set"
	exit 1
fi

if [ -z $PLUGIN_SERVER_URL ]
then
	echo "Server url not set"
	exit 1
fi

if [ -z $PLUGIN_REPO_ID ]
then
	echo "repo id not set"
	exit 1
fi

if [ -z $PLUGIN_ROOT_DIRECTORY ]
then
	echo "root directory not set"
	exit 1
fi


upload_link=`curl -H "Authorization: Token ${PLUGIN_SEAFILE_TOKEN}" "${PLUGIN_SERVER_URL}/api2/repos/${PLUGIN_REPO_ID}/upload-link/" | sed -e 's/^"//' -e 's/"$//'`
for filename in $PLUGIN_FILES; do
    echo "uploading ${filename}";
    curl -H "Authorization: Token ${PLUGIN_SEAFILE_TOKEN}" -F file="@${filename}" -F parent_dir=$PLUGIN_ROOT_DIRECTORY  -F replace=1  $upload_link
done
