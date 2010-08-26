require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
 
describe MessagesController do
  integrate_views
  fixtures :messages
  it "visualizar mensagens quando não há mensagens" do
    get :index
    response.should include_text("Não há mensagens.")
  end
  it "visualizar mensagens quando há mensagens" do
    User.create(:username => "joao",:email=> "joao@xp.com.br", :password=>"teste123", :password_confirmation=>"teste123")
    Message.create(:content=> "blá blá blá 1",:user_id => User.first.id)
    @message_mock = mock_model(Message, :id => 1,:context => "blá", :user_id => 1, :created_at => Time.now).as_new_record
    assigns[:messages] = @message_mock
    get :index do
      should_assign :messages => [Message,:all]
    end
    response.should include_text("blá")
  end
  it "criar mensagem" do
    @current_user = mock_model(User, :id => 1)
    controller.stub!(:current_user).and_return(@current_user)
    post :create, {:message =>{:content => "blá blá blá 1",:user_id => 1}}
    response.should redirect_to(messages_path)
  end

  it "concordar com a mensagem" do
    @current_user = mock_model(User, :id => 1)
    controller.stub!(:current_user).and_return(@current_user)
    post :opinion, :number => "1", :params => {:message => 1}
    response.should include_text("Sua opinião foi salva.")
  end

end
