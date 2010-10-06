class CreateResidenceTypes < ActiveRecord::Migration
  def self.up
    create_table :residence_types do |t|
      t.column :name, :string
      t.column :temporary, :boolean
        #indicates whether the person lived there year round or part of the time
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :residence_types
  end
end
