class AddSortName < ActiveRecord::Migration
def self.up
  add_column :individuals, :sort_name, :string
end

def self.down
  remove_column :individuals, :sort_name
  end
end
