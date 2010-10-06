#loads data from file db/migrate/dev_data/assignment_types.yml

require 'active_record/fixtures'

class LoadAssignmentTypesData < ActiveRecord::Migration
  def self.up

    down

    directory = File.join(File.dirname(__FILE__), "dev_data")
    Fixtures.create_fixtures(directory, "assignment_types")
  end

  def self.down
    AssignmentType.delete_all
  end
end