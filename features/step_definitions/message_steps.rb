Dado /^não há mensagens$/ do
  Message.delete_all
end

Dado /^há mensagens$/ do
  User.create(:username => "joao",:email=> "joao@xp.com.br", :password=>"teste123", :password_confirmation=>"teste123")
  Message.create(:content=> "blá blá blá 1",:user_id => User.first.id)
  Message.create(:content=> "blá blá blá 2",:user_id => User.first.id)
end

