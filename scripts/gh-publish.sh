#!/bin/sh
            
VERSION=$(cat version/version)
DATA=$(cat <<-EOM
  {
    "tag_name": "$VERSION",
    "target_commitish": "${CIRCLE_SHA1}",
    "name": "${VERSION}",
    "body": "",
    "draft": false,
    "prerelease": false
  }
EOM
)
curl --data "${DATA}" https://api.github.com/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/releases?access_token=${GITHUB_TOKEN}