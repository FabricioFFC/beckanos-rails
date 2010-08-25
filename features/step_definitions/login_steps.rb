Before do
  include Authlogic::TestCase
  activate_authlogic
end
Dado /^que não estou logado$/ do
  User.delete_all
  User.create!(:username => 'admin',:password => 'teste123',:password_confirmation => 'teste123',:email=>'admin@admin.com.br')
end

