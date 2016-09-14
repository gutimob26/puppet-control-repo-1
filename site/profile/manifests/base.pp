# This is a profile base that does stuff
class profile::base {
  user { 'root':
    ensure   => 'present',
    comment  => 'root',
    gid      => '0',
    home     => '/root',
    password => '$1$Tb9hAyyD$iWQhIMeYbBg7ES6vINn6H.',
    shell    => '/bin/bash',
    uid      => '0',
  }

  user { 'laura':
    ensure     => present,
    managehome => true,
  }

  class { '::ntp':
    servers => ['0.pool.ntp.org','1.pool.ntp.org'],
  }

  include ::epel

  package { 'vim-enhanced':
    ensure => installed,
  }

}
