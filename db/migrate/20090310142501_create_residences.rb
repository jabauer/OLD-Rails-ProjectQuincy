class CreateResidences < ActiveRecord::Migration
  def self.up
    create_table :residences do |t|
      t.column :individual_id, :integer
        #foreign key for the individuals table
      t.column :location_id, :integer
        #foreign key for the locations table
      t.column :residence_type_id, :integer
        #foreign key for the residence_types table
      t.column :start_year, :integer, :limit => 4
      t.column :end_year, :integer, :limit => 4
      t.column :birth_place, :boolean
        #indicates if the person was born here
      t.column :death_place, :boolean
        #indicates if the person died here
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :residences
  end
end
