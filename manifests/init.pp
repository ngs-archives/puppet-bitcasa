# Public: Install Bitcasa to /Applications
#
# Examples
#
#     include bitcasa
class bitcasa {
  package { 'Bitcasa':
    provider => 'pkgdmg',
    source   => 'https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_1.4.1287.dmg',
  }
}
