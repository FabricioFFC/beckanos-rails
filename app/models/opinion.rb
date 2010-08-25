class Opinion < ActiveRecord::Base
  belongs_to :message
  belongs_to :user
  validate :first_time_user_opines_message

protected

  def first_time_user_opines_message
    first_time = Opinion.find_by_sql("select count(*) as count from opinions o where o.message_id = #{self.message_id} and o.user_id = #{self.user_id}")[0].count.to_i
    errors.add(:opinion, 'usuário já opiniou nessa mensagem') if first_time == 1
  end
  
end
