require 'spec_helper'

describe 'bitcasa' do
  it do
    should contain_package('Bitcasa').with({
      :provider => 'pkgdmg',
      :source   => 'https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_1.4.1287.dmg',
    })
  end
end
