node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a README.',
    owner   => 'root',
  }
}
node 'mastter.puppet.vm' {
  include role::master_server
}
