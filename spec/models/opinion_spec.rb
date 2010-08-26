require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
 
describe Opinion do
  it "quando a mensagem é criada a importância é 0" do
    Message.create!(:content => 'teste',:user_id => '1')
    Message.what_is_the_importance?(1).should equal(0)
  end
end
