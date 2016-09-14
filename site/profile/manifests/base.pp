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

  include ntp

  include ::epel

  package { 'vim-enhanced':
    ensure => installed,
  }

}
