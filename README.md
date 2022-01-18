# Pricompa (priconne companion)

Manual: [English](./MANUAL.md) [中文](./MAMUAL_zh.md) [日本語](./MANUAL_jp.md)


Download the zip file, do:

1. install Interception driver(deps/Interception/command line installer)
2. run pricompa.exe(build/Debug)

The installation of driver should be down by command line in admin, run:
```
install-interception.exe /install
```

You could check [Interception](https://github.com/oblitum/Interception).

## Contribute to Pricompa
Use WSL and [MWEB](https://www.github.com/chu-mirror/mweb) to build,
beside this, set environment variable PATH in windows to contain "VsDevCmd",
which usually come togother with your Visual Studio(_2022/BuildTools/Common7/Tools_
in my computer).

```
$ make build
```
