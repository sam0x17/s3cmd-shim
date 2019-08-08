# s3cmd shim
This docker image provides a working s3cmd CLI tool that can be used as a drop-in replacement
for a local s3cmd installation on systems where certain features of s3cmd are not currently
functioning. In particular, I created this to get around the fact that
 [support for the cf-invalidate option on macos has been broken since 2018](https://github.com/s3tools/s3cmd/issues/1046).

Linux and Macos are supported. Windows will work but you will need to write your own `s3cmd` script as a .bat file.

## Prerequisites
1. docker must be installed and enabled for non-root users
2. your system must have curl installed (basically every system does)

## Installation
Simply run this in a terminal:

```
curl -o- https://raw.githubusercontent.com/sam0x17/s3cmd-shim/master/install.sh | bash
```
Now re-open your terminal and you'll be all set.

You can now use `s3cmd` on your host system as you normally would, and integration should
be fully seamless.

The script will set up your environment so that the latest
s3cmd shell script is located at `~/.s3cmd_shim/s3cmd` and will add this to your path. If you use ash or zsh or fish or something
weird you may have to manually add `~/.s3cmd_shim/` to your path.

## Updating / Uninstalling
To uninstall clone the repo and `./uninstall.sh`. If you care, you
will need to manually remove the PATH entries from the usual locations.

To update, just re-run the installation one-liner and you should be good.

## Status
- [X] tested and working, even on macos
- [X] working with absolute paths
- [ ] tested with current directory based paths
- [ ] tested with relative paths (should work fine)
