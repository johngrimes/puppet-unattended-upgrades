class unattended_upgrades {
  package { 'unattended-upgrades':
    ensure => present
  }

  file { '/etc/apt/apt.conf.d/20auto-upgrades':
    ensure  => present,
    source => 'puppet:///modules/unattended_upgrades/auto_upgrades.conf'
  }
}
