class profile::base {
  user {'admin':
    ensuree => present,
  }
}
