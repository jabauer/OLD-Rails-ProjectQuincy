class CreateRegions < ActiveRecord::Migration
  def self.up
    create_table :regions do |t|
        t.column :name, :string
        t.column :notes, :text
             #short historical notes can be kept here (alternate names, etc.)
      t.timestamps
    end
  end

  def self.down
    drop_table :regions
  end
end
