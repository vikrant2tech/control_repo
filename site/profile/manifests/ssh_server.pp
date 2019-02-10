class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key {'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxgnW1A75CxO5+8vRDzVMBxJ8qJsJMxPgViPvP/3DT/tonVtSWDnisUR2LvynVLjoHD3dtb7lxOIYsDrhPNxkCIQUqCOMzKgPhN9UzwnaN/DNlbcu9MVJEYmBbZcfaTWYavV6QStXgIrAWo3arRP5f1BvQl3mxCLehx1UZrw34yvJ/x11mNybgHDcvtOKr2lW9OGtbgtPkpY0fdOj+ZMnzC5pA4jjnrnBQnCbcYor298Hr4I23ZF9vyjx4U/+JMkRfUaJzV6AD9sGlwyn7T+52+9G/BmhsqLCQbbP20TeO/HI982UqwquBul6F/wIdmO0owIr2R56pFS9uDRgSQvY5',
	}  
}
