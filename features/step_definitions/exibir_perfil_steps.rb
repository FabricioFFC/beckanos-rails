Before do
  include Authlogic::TestCase
  activate_authlogic
end
Dado /^que eu esteja logado como "([^"]*)" com a senha "([^"]*)"$/ do |arg1, arg2|
  UserSession.create(:username => arg1, :password => arg2, :password_confirmation => arg2)
end

