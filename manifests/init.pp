class unattended_upgrades {
  package { 'unattended-upgrades':
    ensure => present
  }

  file { '/etc/apt/apt.conf.d/20auto-upgrades':
    ensure  => present,
    source => 'puppet:///modules/unattended_upgrades/20auto-upgrades'
  }
}
