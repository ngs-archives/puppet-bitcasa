# Public: Install Bitcasa to /Applications
#
# Examples
#
#     include bitcasa
class bitcasa {
  package { 'Bitcasa':
    provider => 'pkgdmg',
    source   => 'https://www.bitcasa.com/download/mac',
  }
}
