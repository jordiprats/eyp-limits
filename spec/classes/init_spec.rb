require 'spec_helper'
describe 'limits' do

  context 'with defaults for all parameters' do
    it { should contain_class('limits') }
  end
end
