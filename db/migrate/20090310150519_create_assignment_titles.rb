#creates a list of titles given to foreign service officers
#contains a foreign key to group these titles by type (diplomatic, consular, support staff)
#also indicates if the position was temporary (i.e. "acting") and if it was commissioned

class CreateAssignmentTitles < ActiveRecord::Migration
  def self.up
    create_table :assignment_titles do |t|
      t.column :name, :string
      t.column :assignment_type_id, :integer
        #foreign key for the assignment_types table
      t.column :temporary, :boolean
      t.column :commissioned, :boolean
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :assignment_titles
  end
end
