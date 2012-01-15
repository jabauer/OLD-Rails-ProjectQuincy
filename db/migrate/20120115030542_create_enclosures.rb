class CreateEnclosures < ActiveRecord::Migration
  def self.up
    create_table :enclosures do |t|
      t.integer :main_letter_id, :references => :letters
      t.integer :enclosed_letter_id, :references => :letters
      t.text :notes
      t.timestamps
    end
  end

  def self.down
    drop_table :enclosures
  end
end
