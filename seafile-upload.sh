#!/bin/sh

curl -H "Authorization: Token ${PLUGIN_SEAFILE_TOKEN}" $PLUGIN_SERVER_URL
upload_link=`curl -H "Authorization: Token ${PLUGIN_SEAFILE_TOKEN}" $PLUGIN_SERVER_URL | sed -e 's/^"//' -e 's/"$//'`;
curl -v -H "Authorization: Token ${PLUGIN_SEAFILE_TOKEN}" -F file="@${PLUGIN_FILE}" -F parent_dir=$PLUGIN_ROOT_DIRECTORY;
