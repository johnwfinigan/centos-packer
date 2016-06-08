sed -i '/HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i "/^UUID/d" /etc/sysconfig/network-scripts/ifcfg-eth0

rm /etc/sysconfig/selinux
ln -s /etc/selinux/config /etc/sysconfig/selinux
sed -i "s/^\(SELINUX=\).*/\1disabled/g" /etc/selinux/config

rm -f /etc/ssh/ssh_host_*
rm -f /etc/udev/rules.d/70-persistent-net.rules
rm -f /var/lib/dhclient/dhclient-eth0.leases
rm -rf /tmp/*
yum -y upgrade
yum -y groupinstall "Development Tools"
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
yum -y install python-devel gmp-devel man puppet
yum -y clean all
