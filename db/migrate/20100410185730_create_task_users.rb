class CreateTaskUsers < ActiveRecord::Migration
  def self.up
    create_table :task_users do |t|
      t.integer :task_id
      t.integer :user_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :task_users
  end
end
