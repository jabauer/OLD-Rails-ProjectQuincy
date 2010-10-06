class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.column :name, :string        
        #standardized name, alternates will be kept in a join table (if the notes field proves inadequate)
      t.column :lat, :decimal, :precision => 12, :scale => 9          #latitude
      t.column :long, :decimal, :precision => 12, :scale => 9         #longitude
      t.column :notes, :text         
        #record information about name changes, history, etc. in notes
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
