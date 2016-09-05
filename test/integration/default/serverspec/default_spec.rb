#require 'serverspec'
#include Serverspec::Helper::Exec
#include Serverspec::Helper::DetectOS

#describe port(3306) do
#    it { should be_listening }
#end

#describe file('/etc/mysql/my.cnf') do
#    it { should be_file }
#    its(:content) { should match /ServerName www.example.jp/ }
#end
