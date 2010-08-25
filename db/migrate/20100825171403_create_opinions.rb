class CreateOpinions < ActiveRecord::Migration
  def self.up
    create_table :opinions do |t|
      t.boolean :opinion
      t.references :message
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :opinions
  end
end
