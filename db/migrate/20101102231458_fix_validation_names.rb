class FixValidationNames < ActiveRecord::Migration
  def self.up
    rename_column :validations, :entity_key, :validatable_id
    rename_column :validations, :entity_type, :validatable_type
  end

  def self.down
    rename_column :validations, :validatable_id, :entity_key
    rename_column :validations, :validatable_type, :entity_type
  end
end
