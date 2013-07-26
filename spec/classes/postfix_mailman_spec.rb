require 'spec_helper'
describe 'postfix::mailman' do
  let (:facts) { {
    :operatingsystem => 'RedHat',
    :osfamily        => 'RedHat',
    :fqdn            => 'fqdn.example.com',
  } }
	context 'when included' do
    it { should include_class('postfix::mailman') }
    it { should contain_postfix__config('virtual_alias_maps').with_value('hash:/etc/postfix/virtual') }
    it { should contain_postfix__config('transport_maps').with_value('hash:/etc/postfix/transport') }
    it { should contain_postfix__config('mailman_destination_recipient_limit').with_value('1') }
    it { should contain_postfix__hash('/etc/postfix/virtual') }
    it { should contain_postfix__hash('/etc/postfix/transport') }
  end
end
