require 'spec_helper'

describe 'bitcasa' do
  it do
    should contain_package('Bitcasa').with({
      :provider => 'pkgdmg',
      :source   => 'https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_1.3.1249.dmg',
    })
  end
end
