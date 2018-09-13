#!/bin/sh

version=$(cat version/version)
! curl -fs -o /dev/null https://api.github.com/repos/richardalberto/terraform-google-kubernetes-istio/releases/tags/${version} || {
  echo "Release ${version} exists already. Please update version/version with a valid release number."
  exit 1
}
echo "Ok"