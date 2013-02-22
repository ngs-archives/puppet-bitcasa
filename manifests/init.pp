class bitcasa {
  exec { "curl -kL https://www.bitcasa.com/download/mac -o '/Library/Receipts/Bitcasa.pkg'":
    path   => [ '/usr/bin' ],
    onlyif => '[ ! -f /Library/Receipts/Bitcasa.pkg ]' 
  }

  package { 'Bitcasa':
    provider => 'apple',
    source   => '/Library/Receipts/Bitcasa.pkg'
  }
}
