class bitcasa {
  $version   = '1.3.1207'
  $installer = "/Library/Receipts/Bitcasa_${version}.pkg"
  $dl_link   = 'https://www.bitcasa.com/download/mac'

  exec { 'bitcasa-fetch-installer':
    command => "curl -kL ${dl_link} -o ${installer}",
    path    => [ '/usr/bin', '/bin' ],
    only_if => "sh -c '[ ! -f ${installer} ];'"
  }

  package { 'Bitcasa':
    name      => "Bitcasa_${version}",
    provider  => 'apple',
    source    => $installer,
    subscribe => Exec['bitcasa-fetch-installer'],
}

