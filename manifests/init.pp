class bitcasa {
  $bitcasa_version = '1061'

  exec { "bitcasa-fetch-installer":
    command => "curl -kL https://www.bitcasa.com/download/mac -o '/Library/Receipts/Bitcasa_${bitcasa_version}.pkg'",
    path    => [ '/usr/bin', '/bin' ],
    onlyif  => "sh -c '[ ! -f /Lubrary/Receipts/Bitcasa_${bitcasa_version}.pkg ]'",
  }

  package { "Bitcasa_${bitcasa_version}":
    provider => 'apple',
    source   => "/Library/Receipts/Bitcasa_${bitcasa_version}.pkg",
    require  => Exec['bitcasa-fetch-installer'],
  }
}
