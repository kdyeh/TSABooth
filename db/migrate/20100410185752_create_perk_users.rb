class CreatePerkUsers < ActiveRecord::Migration
  def self.up
    create_table :perk_users do |t|
      t.integer :perk_id
      t.integer :user_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :perk_users
  end
end
