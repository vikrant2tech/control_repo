node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => $fqdn,
  }
}
node 'web.puppet.vm' {
  include role::app_server
}
node 'db.puppet.vm' {
  include role::db_server
}
