centos-packer
=============

Fork of INSANEWORKS/centos-packer modified to build Centos Vagrant boxes for KVM / libvirt provider

## Packer Build for VirtualBox

```
cd centos6 or centos7
packer validate [ CentOS_6.json | CentOS_7.json ]
VERSION=v20151003 packer build [ -only virtualbox-iso | -only qemu ]  [ CentOS_6.json | CentOS_7.json ]
```

## Add Vagrant Box

```
vagrant box add BOXNAME INSANEWORKS-CentOS-6-x86_64-v20151003-virtualbox.box
```
