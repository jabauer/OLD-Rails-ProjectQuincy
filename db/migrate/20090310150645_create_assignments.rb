#holds information on who held which post, and when (with a measure of certainty)
#foreing keys connecting to Individuals, AssignmentTitles, and Loactions fields
#initial data based on Smith's study

class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.column :individual_id, :integer
      t.column :assignment_title_id, :integer
      t.column :location_id, :integer
      t.column :start_year, :integer, :limit => 4
      t.column :start_certain, :boolean
      t.column :end_year, :integer, :limit => 4
      t.column :end_certain, :boolean
      t.column :notes, :text
    end
  end

  def self.down
    drop_table :assignments
  end
end
