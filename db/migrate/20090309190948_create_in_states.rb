#InStates allows locations to be included in mulitiple states over time.


class CreateInStates < ActiveRecord::Migration
  def self.up
    create_table :in_states do |t|
      t.column :location_id, :integer 
        #foreign key for the locations table
      t.column :state_id, :integer 
        #foreign key for the states table
      t.column :start_year, :integer, :limit => 4 
        #indicates the year when a specific location became part of a specific state
      t.column :end_year, :integer, :limit => 4 
        #indicates the year when a specific location ceased to be part of a specific state
      t.column :notes, :text 
        #notes field for any other necessary information
      t.timestamps
    end
  end

  def self.down
    drop_table :in_states
  end
end
