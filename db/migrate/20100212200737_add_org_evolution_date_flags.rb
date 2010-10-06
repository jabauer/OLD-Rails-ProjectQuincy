class AddOrgEvolutionDateFlags < ActiveRecord::Migration
  def self.up
    add_column :org_evolutions, :day_known, :boolean
    add_column :org_evolutions, :month_known, :boolean
    add_column :org_evolutions, :year_known, :boolean
  end

  def self.down
    add_column :org_evolutions, :day_known
    add_column :org_evolutions, :month_known
    add_column :org_evolutions, :year_known
  end
end
