require 'spec_helper'
describe 'zabbixagent' do

  context 'with defaults for all parameters' do
    it { should contain_class('zabbixagent') }
  end
end
