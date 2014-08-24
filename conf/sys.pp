Package { ensure => "installed" }

package {[
"mdadm",
"xfsprogs",
"xfsdump",
"etckeeper",
"virtualbox",
"whois",
"nmap",
"openssh-server",
"secure-delete",
"wine",
"linux-tools-common",
"linux-base",
"linux-tools-3.5.0-17",
"subversion",
"htop",
"vpnc",
"network-manager-vpnc",
"network-manager-vpnc-gnome",
"collectd",
"collectd-utils",
"librrd-ruby1.9.1",
"ruby",
"ruby-dev",
"rubygems",
"build-essential",
"aqemu",
"ubuntu-virt",
"qemu-system",
"libvirt-bin",
"openvpn",
"gadmin-openvpn-client",
"network-manager-openvpn",
"network-manager-openvpn-gnome",
"fuse",
"libfuse-dev"
]:
}

package { ["visage-app"]:
	ensure => 'installed',
	provider => 'gem'
}

