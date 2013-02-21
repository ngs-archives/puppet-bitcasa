class bitcasa {
  package { 'Bitcasa':
    provider => 'pkgdmg',
    source   => 'http://dist.bitcasa.com/Bitcasa_1037.pkg',
  }
}
