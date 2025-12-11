crosstool-ng-prebuilt
=====================
Based on https://github.com/crosstool-ng/crosstool-ng/blob/master/.github/workflows/build-toolchains.yml

### Full CLI commands
```
git clone --recurse-submodules --branch crosstool-ng-1.28.0 crosstool-ng/crosstool-ng && \
sudo apt-get update && \
sudo apt-get install -y gcc g++ gperf bison flex texinfo help2man make libncurses5-dev \
    python3-dev autoconf automake libtool libtool-bin gawk wget bzip2 xz-utils unzip \
    patch libstdc++6 rsync git meson ninja-build && \
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" && \
./bootstrap && \
./configure --help && \
./configure --enable-local && \
make && \
./ct-ng arm-cortexa9_neon-linux-gnueabihf
./ct-ng menuconfig
```
### To build
- `x86_64-w64-mingw32`
- `avr`

### Documentation
- [Setting up host OS](https://crosstool-ng.github.io/docs/os-setup/)

### Docker
- [crosstool-ng/testing/docker/ubuntu22.04/Dockerfile at master · crosstool-ng/crosstool-ng](https://github.com/crosstool-ng/crosstool-ng/blob/master/testing/docker/ubuntu22.04/Dockerfile)

### Reference
- [使用crosstool-ng制作交叉编译工具链-CSDN博客](https://blog.csdn.net/lisemi/article/details/91045791)
- [第 2 章 下载和安装crosstool-ng - - crosstool-ng详解](https://www.crifan.com/files/doc/docbook/crosstool_ng/release/webhelp/download_install_crosstool_ng.html)
- [crosstool-ng详解【转】 - Sky&Zhang - 博客园](https://www.cnblogs.com/sky-heaven/p/13508495.html)
