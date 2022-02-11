#!/bin/bash

docker pull mattermost/mattermost-preview

docker run --name mattermost-test \
    -d --publish 8065:8065 mattermost/mattermost-preview

