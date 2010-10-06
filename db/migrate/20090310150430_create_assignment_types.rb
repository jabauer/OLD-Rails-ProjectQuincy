class CreateAssignmentTypes < ActiveRecord::Migration
  def self.up
    create_table :assignment_types do |t|
        t.column :name, :string
        t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :assignment_types
  end
end
