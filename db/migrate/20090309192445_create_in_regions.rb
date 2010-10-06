class CreateInRegions < ActiveRecord::Migration
  def self.up
    create_table :in_regions do |t|
      t.column :location_id, :integer 
        #foreign key for the locations table
      t.column :region_id, :integer 
        #foreign key for the regions table
      t.column :notes, :text 
        #notes field for any other necessary information
      t.timestamps
    end
  end

  def self.down
    drop_table :in_regions
  end
end
