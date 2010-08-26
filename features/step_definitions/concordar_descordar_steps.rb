Dado /^há uma mensagem$/ do
  Message.create(:content=> "blá blá blá 1",:user_id=>current_user.id)
end
Dado /^eu já opinei nessa mensagem$/ do
  Opinion.create!(:opinion => 1,:user_id => current_user.id, :message_id => Message.first.id)
end


