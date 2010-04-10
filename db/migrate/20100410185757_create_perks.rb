class CreatePerks < ActiveRecord::Migration
  def self.up
    create_table :perks do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.timestamps
    end
  end
  
  def self.down
    drop_table :perks
  end
end
