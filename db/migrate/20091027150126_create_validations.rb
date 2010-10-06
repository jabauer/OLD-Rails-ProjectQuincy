class CreateValidations < ActiveRecord::Migration
  def self.up
    create_table :validations do |t|

      t.string :entity_type
      t.integer :entity_key  #this is not a foreign key in a literal sense, 
                            #instead it holds the unique identifier 
                            #for whatever entity (model) type is specified 
      t.boolean :supports
      t.integer :user_id #this is a foreign key to the users table
      t.integer :citation_id #this is a foreign key to the citations table
      t.text :notes
      t.timestamps
    end
  end

  def self.down
    drop_table :validations
  end
end
