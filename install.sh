#!/bin/bash
mkdir -p ~/.s3cmd_shim || exit 1
cd ~/.s3cmd_shim || exit 1
touch s3cmd || exit 1
rm s3cmd || exit 1
curl https://raw.githubusercontent.com/sam0x17/s3cmd-shim/master/s3cmd --output s3cmd || exit 1
chmod +x s3cmd || exit 1
docker pull durosoft/s3cmd-shim:latest || exit 1
if grep -q "/.s3cmd_shim" "$HOME/.bashrc"; then
  echo "s3cmd shim successfully updated"
  exit
fi
echo 'export PATH="$PATH:~/.s3cmd_shim/"' >> ~/.bashrc || exit 1
echo 'export PATH="$PATH:~/.s3cmd_shim/"' >> ~/.bash_profile || exit 1
echo "s3cmd shim successfully installed -- reopen your terminal to begin using s3cmd"
