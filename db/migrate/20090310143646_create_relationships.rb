class CreateRelationships < ActiveRecord::Migration
  def self.up
    create_table :relationships do |t|
      t.column :individual_id_1, :integer, :references => :individuals
      t.column :individual_id_2, :integer, :references => :individuals
        #the two columns are foreign keys for the individuals table
      t.column :relationship_type_id, :integer
        #foreign key for the relationship_types table
        #N.B. the relationship_type is one-way from individual_1 to individual_2
      t.column :start_year, :integer, :limit => 4
      t.column :end_year, :integer, :limit => 4
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :relationships
  end
end
