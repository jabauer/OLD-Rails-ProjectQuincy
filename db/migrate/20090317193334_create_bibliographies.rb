class CreateBibliographies < ActiveRecord::Migration
  def self.up
    create_table :bibliographies do |t|
      t.column :entry, :text #full bibliographic citations
      t.column :notes, :text #any additional information (composite work, etc.)
      t.timestamps
    end
  end

  def self.down
    drop_table :bibliographies
  end
end
