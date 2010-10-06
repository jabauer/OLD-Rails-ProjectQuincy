class AddLetterTitle < ActiveRecord::Migration
  def self.up
    add_column :letters, :title, :string
  end

  def self.down
    remove_column :letters, :title
  end
end
