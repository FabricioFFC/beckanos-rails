class Message < ActiveRecord::Base
  belongs_to :user
  def self.what_is_the_importance?(message_id)
    Opinion.find_by_sql("select count(*) as importance from opinions where message_id = #{message_id}")[0].importance.to_i
  end
end
