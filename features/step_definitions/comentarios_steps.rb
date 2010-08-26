Quando /^há um comentário "([^"]*)"$/ do |arg1|
 Comment.create(:content=>arg1,:message_id=>Message.first.id, :user_id=>User.first.id)
end

