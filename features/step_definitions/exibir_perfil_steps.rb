Before do
  include Authlogic::TestCase
  activate_authlogic
end
Dado /^que eu esteja logado como "([^"]*)" com a senha "([^"]*)"$/ do |arg1, arg2|
  User.create!(:username => 'admin',:password => 'teste123',:password_confirmation => 'teste123',:email=>'admin@admin.com.br')
  visit path_to('página de login')
  fill_in("Usuário", :with => "admin")
  fill_in("Senha", :with => "teste123")
  click_button("Login")
  response.should contain("O que está rolando na PRW Energia?")
#  User.create!(:username => arg1,:password => arg2,:password_confirmation => arg2,:email=>'admin@admin.com.br')
#  UserSession.create(:username => arg1, :password => arg2, :password_confirmation => arg2)
#  session = UserSession.new(:username => arg1, :password => arg2, :password_confirmation => arg2)
#  session.save
end

