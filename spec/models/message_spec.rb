require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
 
describe Message do
  it "quando a mensagem é criada a importância é 0" do
    Message.create!(:content => 'teste',:user_id => '1')
    Message.what_is_the_importance?(1).should equal(0)
  end
  
  it "quando a primeira pessoa concordar a mensagem ganha importância 1" do
    Message.create!(:content => 'teste',:user_id => '1')
    Opinion.create!(:opinion => 1,:user_id => 2, :message_id => Message.first.id)
    Message.what_is_the_importance?(Message.first.id).should equal(1)
  end
  
  it "quando uma segunda pessoa concordar a mensagem ganha importância 2" do
    Message.create!(:content => 'teste',:user_id => '1')
    Opinion.create!(:opinion => 1,:user_id => 2, :message_id => Message.first.id)
    Opinion.create!(:opinion => 1,:user_id => 3, :message_id => Message.first.id)
    Message.what_is_the_importance?(Message.first.id).should equal(2)
  end
  
  it "quando não há opiniões sobre a mensagem do autor, a sua inflência é 0" do
    User.create!(:username => 'joao',:password => '123456',:password_confirmation => '123456',:email => "joao@xp.com.br")
    Message.create!(:content => 'teste',:user_id => User.first.id)
    User.what_is_the_influence?(User.first.id).should equal(0)
  end
  
  it "quando a mensagem do autor ganhar uma opinião, o autor ganha influência 1" do
    User.create!(:username => 'joao',:password => '123456',:password_confirmation => '123456',:email => "joao@xp.com.br")
    Message.create!(:content => 'teste',:user_id => User.first.id)
    Opinion.create!(:opinion => 1,:user_id => 2, :message_id => Message.first.id)
    User.what_is_the_influence?(User.first.id).should equal(1)
  end
  it "quando a mensagem do autor ganhar uma segunda opinião, o autor ganha influência 2" do
    User.create!(:username => 'joao',:password => '123456',:password_confirmation => '123456',:email => "joao@xp.com.br")
    Message.create!(:content => 'teste',:user_id => User.first.id)
    Opinion.create!(:opinion => 1,:user_id => 2, :message_id => Message.first.id)
    Opinion.create!(:opinion => 1,:user_id => 3, :message_id => Message.first.id)
    User.what_is_the_influence?(User.first.id).should equal(2)
  end
  
  it "só posso dá uma opinião por mensagem" do
    Message.create!(:content => 'teste',:user_id => 1)
    Opinion.create!(:opinion => 1,:user_id => 2, :message_id => Message.first.id)
    Opinion.new(:opinion => 1,:user_id => 2, :message_id => Message.first.id).should_not be_valid
  end
  
end
