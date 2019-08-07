#!/bin/bash
mkdir -p ~/.s3cmd_shim || exit 1
cp ./s3cmd ~/.s3cmd_shim/ || exit 1
if grep -q "/.s3cmd_shim" "$HOME/.bashrc"; then
  echo "s3cmd shim successfully updated"
  exit
fi
echo 'export PATH="$PATH:~/.s3cmd_shim/"' >> ~/.bashrc || exit 1
echo "s3cmd shim successfully installed"
