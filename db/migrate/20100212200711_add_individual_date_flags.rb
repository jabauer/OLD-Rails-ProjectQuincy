class AddIndividualDateFlags < ActiveRecord::Migration
  def self.up
    add_column :individuals, :birth_day_known, :boolean
    add_column :individuals, :birth_month_known, :boolean
    add_column :individuals, :birth_year_known, :boolean
    
    add_column :individuals, :death_day_known, :boolean
    add_column :individuals, :death_month_known, :boolean
    add_column :individuals, :death_year_known, :boolean
  end

  def self.down
    remove_column :individuals, :birth_day_known
    remove_column :individuals, :birth_month_known
    remove_column :individuals, :birth_year_known
    
    remove_column :individuals, :death_day_known
    remove_column :individuals, :death_month_known
    remove_column :individuals, :death_year_known
  end
end
