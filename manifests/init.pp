class bitcasa {
  require boxen::config

  exec { "curl -kL https://www.bitcasa.com/download/mac -o '${boxen::config::cachedir}/Bitcasa.pkg'":
    path => [ '/usr/bin' ]
  }

  package { 'Bitcasa':
    provider => 'apple',
    source   => "${boxen::config::cachedir}/Bitcasa.pkg",
    ensure   => 'installed',
  }
}
