class CreateOccupations < ActiveRecord::Migration
  def self.up
    create_table :occupations do |t|
      t.column :individual_id, :integer
        #foreign key for the individuals table
      t.column :occupation_title_id, :integer
        #foreign key for the occupation_titles table
      t.column :start_year, :integer, :limit => 4
        #year individual began in an occupation
      t.column :end_year, :integer, :limit => 4
        #year individual stopped an occupation
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :occupations
  end
end
