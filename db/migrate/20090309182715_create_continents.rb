#Continents is the broadest geographic catagory in this database.

class CreateContinents < ActiveRecord::Migration
  def self.up
    create_table :continents do |t|
      t.column :name, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :continents
  end
end
