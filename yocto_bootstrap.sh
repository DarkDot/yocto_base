#!/bin/sh

sudo sed -i.bak 's/^# *deb-src/deb-src/g' /etc/apt/sources.list \
&& sudo apt update \
&& sudo apt install -y \
gawk \
wget \
gcc \
zstd \
git \
diffstat \
unzip \
texinfo \
gcc-multilib \
build-essential \
chrpath \
socat \
cpio \
python3 \
python3-pip \
python3-pexpect \
xz-utils \
debianutils \
iputils-ping \
python3-git \
python3-jinja2 \
libegl1-mesa \
libsdl1.2-dev \
python3-pytest-pylint \
xterm \
python3-subunit \
mesa-common-dev \
make \
liblz4-tool \
python3-pip \
file \
locales \
inkscape \
texlive-latex-extra \
&& sudo locale-gen en_US.UTF-8 \
&& sudo apt -y build-dep qemu \
&& sudo apt remove -y oss4-dev \
&& sudo pip3 install sphinx sphinx_rtd_theme pyyaml \
&& git clone --branch kirkstone https://git.yoctoproject.org/poky \
&& cd poky \
&& . oe-init-build-env \
&& bitbake core-image-sato --runall fetch \
&& time bitbake core-image-sato
