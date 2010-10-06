class CreateOrgEvolutionTypes < ActiveRecord::Migration
  def self.up
    create_table :org_evolution_types do |t|
      t.column :name, :string
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :org_evolution_types
  end
end
