crosstool-ng-prebuilt
=====================
Based on https://github.com/crosstool-ng/crosstool-ng/blob/master/.github/workflows/build-toolchains.yml

### Full CLI commands
```bash
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

### GCC version (First check at [Index of /pub/gcc/releases/gcc-12.1.0](https://sourceware.org/pub/gcc/releases/gcc-12.1.0/))
```bash
CT_GCC_VERSION="15.2.0"
CT_GCC_MIRRORS="$(CT_Mirrors GNU gcc/gcc-${CT_GCC_VERSION}) $(CT_Mirrors sourceware gcc/releases/gcc-${CT_GCC_VERSION})"
CT_GCC_ARCHIVE_FILENAME="@{pkg_name}-@{version}"
CT_GCC_ARCHIVE_DIRNAME="@{pkg_name}-@{version}"
CT_GCC_ARCHIVE_FORMATS=".tar.xz .tar.gz"
CT_GCC_SIGNATURE_FORMAT=""
CT_GCC_later_than_15=y
CT_GCC_15_or_later=y
CT_GCC_later_than_14=y
CT_GCC_14_or_later=y
CT_GCC_later_than_13=y
CT_GCC_13_or_later=y
CT_GCC_later_than_12=y
CT_GCC_12_or_later=y
CT_GCC_REQUIRE_12_or_later=y
CT_GCC_later_than_11=y
CT_GCC_11_or_later=y
CT_GCC_later_than_10=y
CT_GCC_10_or_later=y
CT_GCC_later_than_9=y
CT_GCC_9_or_later=y
CT_GCC_later_than_8=y
CT_GCC_8_or_later=y
CT_GCC_later_than_7=y
CT_GCC_7_or_later=y
CT_GCC_later_than_6=y
```
### To build
- `x86_64-w64-mingw32`
- `avr`

### Documentation
- [Setting up host OS](https://crosstool-ng.github.io/docs/os-setup/)

### Linaro
- [Linaro Snapshots](https://snapshots.linaro.org/gnu-toolchain/11.3-2022.06-1/)

### Docker
- [crosstool-ng/testing/docker/ubuntu22.04/Dockerfile at master · crosstool-ng/crosstool-ng](https://github.com/crosstool-ng/crosstool-ng/blob/master/testing/docker/ubuntu22.04/Dockerfile)

### Reference
- [使用crosstool-ng制作交叉编译工具链-CSDN博客](https://blog.csdn.net/lisemi/article/details/91045791)
- [第 2 章 下载和安装crosstool-ng - - crosstool-ng详解](https://www.crifan.com/files/doc/docbook/crosstool_ng/release/webhelp/download_install_crosstool_ng.html)
- [crosstool-ng详解【转】 - Sky&Zhang - 博客园](https://www.cnblogs.com/sky-heaven/p/13508495.html)
