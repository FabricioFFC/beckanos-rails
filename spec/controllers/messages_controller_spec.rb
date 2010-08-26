require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
 
describe MessagesController do
  integrate_views
  fixtures :messages
  it "criar mensagem" do
    @current_user = mock_model(User, :id => 1)
    controller.stub!(:current_user).and_return(@current_user)
    post :create, {:message =>{:content => "blá blá blá 1",:user_id => 1}}
    response.should redirect_to(messages_path)
  end

  it "concordar com a mensagem" do
    @current_user = mock_model(User, :id => 1)
    controller.stub!(:current_user).and_return(@current_user)
    post :opinion, :number => "1", :message => "1"
    response.should redirect_to(messages_path)
  end

end
