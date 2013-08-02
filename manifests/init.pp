class bitcasa {
  package { 'Bitcasa':
    provider => 'pkgdmg',
    source   => 'https://www.bitcasa.com/download/mac',
  }
}
