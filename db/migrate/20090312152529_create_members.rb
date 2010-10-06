class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.column :individual_id, :integer
        #gives foreign key for the person
      t.column :organization_id, :integer
        #gives foreign key for organization
      t.column :role, :string
        #indicates what role the person played in the organization
      t.column :start_year, :integer, :limit => 4
      t.column :end_year, :integer, :limit => 4
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
