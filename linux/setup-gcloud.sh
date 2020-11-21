#!/bin/bash -e

# This script will install and configure Google cloud SDK
#
# Usage:   setup-gcloud.sh <user>
# Example: setup-gcloud.sh ezhu

user=$1

apt install -y apt-transport-https ca-certificates gnupg
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
apt-get update
apt-get install -y google-cloud-sdk
apt-get install -y kubectl google-cloud-sdk-app-engine-python
