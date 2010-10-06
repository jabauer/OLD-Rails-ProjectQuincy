class CreateOccupationTitles < ActiveRecord::Migration
  def self.up
    create_table :occupation_titles do |t|
      t.column :name, :string
      t.column :occupation_type_id, :integer
        #foreign key for the occupation_types table
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :occupation_titles
  end
end
