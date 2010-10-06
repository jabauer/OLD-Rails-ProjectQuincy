class CreateIndividuals < ActiveRecord::Migration
  def self.up
    create_table :individuals do |t|
      t.column :name, :string
        #This is the whole name, written out.  Partial String searches will handle name parts.
      t.column :sex, :string
        #This will have a validation method to make sure the user only enters 'male' or 'female'
      t.column :birth_date, :date
      t.column :death_date, :date
      t.column :state_id, :integer
        #foreign key to the states table.  Used to record an individuals "home state"
      t.column :notes, :text
        #not really meant for a biographical statement, just some additional information people might need while looking at the record.
      t.timestamps
    end
  end

  def self.down
    drop_table :individuals
  end
end
