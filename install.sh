#!/bin/bash
docker build -t s3cmd-docker . || exit 1
mkdir -p ~/.s3cmd_docker || exit 1
cp ./s3cmd ~/.s3cmd_docker/ || exit 1
if grep -q "/.s3cmd_docker" "$HOME/.bashrc"; then
  echo "s3cmd shim successfully updated"
  exit
fi
echo 'export PATH="$PATH:~/.s3cmd_docker/"' >> ~/.bashrc || exit 1
echo "s3cmd shim successfully installed"
