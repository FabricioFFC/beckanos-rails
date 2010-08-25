require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
 
describe UserSession do
  before(:each) do
    include Authlogic::TestCase
    activate_authlogic
  end
 
  it "deve permitir login com usuário e senha válidos" do
    User.create!(:username => 'admin',:password => 'teste123',:password_confirmation => 'teste123',:email=>'admin@admin.com.br')
    user = UserSession.new(:username=>'admin',:password=>'teste123')
    user.valid?.should be_true
  end
  it "deve recusar login com usuário ou senha inválidos" do
    user = UserSession.new(:username=>'admin',:password=>'teste123')
    user.valid?.should be_false
  end
end
