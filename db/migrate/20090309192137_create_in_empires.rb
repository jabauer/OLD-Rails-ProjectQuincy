class CreateInEmpires < ActiveRecord::Migration
  def self.up
    create_table :in_empires do |t|
      t.column :state_id, :integer 
        #foreign key for the states table
      t.column :empire_id, :integer 
        #foreign key for the empires table
      t.column :start_year, :integer, :limit => 4 
        #indicates the year when a specific state became part of a specific empire
      t.column :end_year, :integer, :limit => 4 
        #indicates the year when a specific state ceased to be part of a specific empire
      t.column :notes, :text 
        #notes field for any other necessary information
      t.timestamps
    end
  end

  def self.down
    drop_table :in_empires
  end
end
