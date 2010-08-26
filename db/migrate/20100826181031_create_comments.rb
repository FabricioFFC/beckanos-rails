class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :content
      t.references :user
      t.references :message

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
