#This migration loads a list of the 5 inhabitable continents into
#the database from the file db/migrate/dev_data/continents.yml.


require 'active_record/fixtures'

class LoadContinentsData < ActiveRecord::Migration
  def self.up
    directory = File.join(File.dirname(__FILE__), "dev_data")
    Fixtures.create_fixtures(directory, "continents")
  end

  def self.down
    Continent.delete_all
  end
end