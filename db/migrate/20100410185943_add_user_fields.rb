class AddUserFields < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :active, :boolean, :default => true
    add_column :users, :is_admin, :boolean, :default => false
    add_column :users, :points , :integer
    add_column :users, :spendables, :integer
  end

  def self.down
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :active
    remove_column :users, :is_faculty
    remove_column :users, :points , :integer
    remove_column :users, :spendables, :integer
  end
end
