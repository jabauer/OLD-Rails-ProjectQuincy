class CreateOrgEvolutions < ActiveRecord::Migration
  def self.up
    create_table :org_evolutions do |t|
      t.column :org_1_id, :integer, :references => :organizations
        #foreign key for first organization
      t.column :org_2_id, :integer, :references => :organizations
        #foreign key for second organzation
      t.column :org_evolution_type_id, :integer
        #all evolution types are one way only from the first organization to the second
      t.column :date, :date
        #date of the change
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :org_evolutions
  end
end
