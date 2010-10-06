class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.column :name, :string 
           #standardized name, alternate names will be stored in a join file if it turns out there are too many of them to be kept in the notes field (see below)
      t.column :continent_id, :integer, :null => false
           #foreign key referencing the continents table, if a country happens to exist in more than one continent (ex. Russia, use the notes field)
      t.column :notes, :text
           #short historical notes can be kept here (alternate names, etc.)
      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
