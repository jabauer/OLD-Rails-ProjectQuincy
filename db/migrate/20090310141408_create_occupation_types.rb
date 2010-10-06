#This table helps group occupation_titles (ex. senator, congressman, president 
#would all have an occupation_type of political)

class CreateOccupationTypes < ActiveRecord::Migration
  def self.up
    create_table :occupation_types do |t|
      t.column :name, :string
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :occupation_types
  end
end
