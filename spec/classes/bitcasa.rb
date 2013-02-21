require 'spec_helper'

describe 'bitcasa' do
  it do
    should contain_package('Bitcasa').with({
      :provider => 'pkgdmg',
      :source   => 'https://www.bitcasa.com/download/mac',
    })
  end
end
