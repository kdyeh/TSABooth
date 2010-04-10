class CreateAchievementUsers < ActiveRecord::Migration
  def self.up
    create_table :achievement_users do |t|
      t.integer :achievement_id
      t.integer :user_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :achievement_users
  end
end
