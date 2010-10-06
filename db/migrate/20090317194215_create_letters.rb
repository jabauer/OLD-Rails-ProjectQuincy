class CreateLetters < ActiveRecord::Migration
  def self.up
    create_table :letters do |t|
      #information on where a letter is coming from, can only be sent by an individual OR an organization
      t.column :from_individual_id, :integer, :references => :individuals
      t.column :from_organization_id, :integer, :references => :organizations
      t.column :from_location_id, :integer, :references => :locations
      #information on where a letter is going to, can only be sent to an individual OR an organization
      t.column :to_individual_id, :integer, :references => :individuals
      t.column :to_organization_id, :integer, :references => :organizations
      t.column :to_location_id, :integer, :references => :locations
      #is the letter a circular? (i.e. sent to many people)
      t.column :circular, :boolean
      #information on tracking the letter, when it was sent, when it was received, and when it was recorded
      t.column :date_sent, :date
      t.column :date_received, :date
      t.column :date_docketed, :date
      #any other information goes here
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :letters
  end
end
