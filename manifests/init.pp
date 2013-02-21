class bitcasa {
  exec { "curl -kL https://www.bitcasa.com/download/mac -o '/Library/Receipts/Bitcasa.pkg'":
    path => [ '/usr/bin' ]
  }

  package { 'Bitcasa':
    provider => 'apple',
    source   => '/Library/Receipts/Bitcasa.pkg'
  }
}
