# s3cmd shim
This docker image provides a working s3cmd CLI tool that can be used as a drop-in replacement
for a local s3cmd installation on systems where certain features of s3cmd are not currently
functioning. In particular, I created this to get around the fact that
 [support for the cf-invalidate option on macos has been broken since 2018](https://github.com/s3tools/s3cmd/issues/1046).

## Prerequisites
1. ensure that you have an existing s3cmd config file stored at `~/.s3cfg`
2. make sure you have docker installed and usuable by non-root users
3. have git installed on your host system

## Installation
Simply run this in a terminal:

```
curl -o- https://raw.githubusercontent.com/sam0x17/s3cmd-shim/master/install.sh | bash
```
Now re-open your terminal and you'll be all set. Note that the first time you run `s3cmd`
there will be a slight delay as it clones the latest docker image.

You can now use `s3cmd` on your host system as you normally would, and integration should
be fully seamless.

The script will set up your environment so that the latest
s3cmd shell script is located at `~/.s3cmd_shim/s3cmd` and will add this to your path.

## Status
- [X] tested and working, even on macos
- [X] working with absolute paths
- [ ] tested with current directory based paths
- [ ] tested with relative paths (should work fine)
