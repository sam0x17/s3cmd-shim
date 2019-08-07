#!/bin/bash
rm -rf ~/.s3cmd_shim
docker rmi durosoft/s3cmd-shim
echo "s3cmd-shim has been removed from your system"
