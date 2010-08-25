class User < ActiveRecord::Base
  acts_as_authentic
  
  def self.what_is_the_influence?(user_id)
    User.find_by_sql("select count(*) as importance from messages m, opinions o where m.user_id = #{user_id} and m.id = o.message_id")[0].importance.to_i
  end
end
