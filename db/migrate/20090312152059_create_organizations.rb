class CreateOrganizations < ActiveRecord::Migration
  def self.up
    create_table :organizations do |t|
      t.column :name, :string
      t.column :start_year, :integer, :limit => 4
      t.column :end_year, :integer, :limit => 4
      t.column :magazine_sending, :boolean
        #for recording whether or not the organization sent out mailings
      t.column :organization_type_id, :integer
        #foreign key for organization_types table
      t.column :location_id, :integer
        #foreign key for locations table, gives the address
      t.column :org_bio, :text
        #place for a short history of the organization
      t.column :notes, :text
        #place for additional information about the record, not the same as org_bio
      t.timestamps
    end
  end

  def self.down
    drop_table :organizations
  end
end
