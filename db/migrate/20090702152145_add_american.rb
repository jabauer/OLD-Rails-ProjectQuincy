class AddAmerican < ActiveRecord::Migration
  def self.up
    add_column :individuals, :american, :boolean
  end

  def self.down
    remove_column :individuals, :american
  end
end
