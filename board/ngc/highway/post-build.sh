#!/usr/bin/env bash

cat <<@EOF >>"${TARGET_DIR}/etc/ssh/sshd_config"
PermitRootLogin yes
PermitEmptyPasswords yes
@EOF

cat <<@EOF >>"${TARGET_DIR}/etc/network/interfaces"

auto eth0
auto eth1

iface eth0 inet static
	address 10.0.2.100
	netmask 255.0.0.0
	gateway 10.0.2.10

iface eth1 inet static
	address 10.0.2.101
	netmask 255.0.0.0

@EOF

ssh-keygen -A -f ${TARGET_DIR}
