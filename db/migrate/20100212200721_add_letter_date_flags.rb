class AddLetterDateFlags < ActiveRecord::Migration
  def self.up
    add_column :letters, :sent_day_known, :boolean
    add_column :letters, :sent_month_known, :boolean
    add_column :letters, :sent_year_known, :boolean
    
    add_column :letters, :received_day_known, :boolean
    add_column :letters, :received_month_known, :boolean
    add_column :letters, :received_year_known, :boolean
    
    add_column :letters, :docketed_day_known, :boolean
    add_column :letters, :docketed_month_known, :boolean
    add_column :letters, :docketed_year_known, :boolean
  end

  def self.down
    remove_column :letters, :sent_day_known
    remove_column :letters, :sent_month_known
    remove_column :letters, :sent_year_known
    
    remove_column :letters, :received_day_known
    remove_column :letters, :received_month_known
    remove_column :letters, :received_year_known
    
    remove_column :letters, :docketed_day_known
    remove_column :letters, :docketed_month_known
    remove_column :letters, :docketed_year_known
  end
end
