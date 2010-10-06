# == Schema Information
# Schema version: 20091027151305
#
# Table name: validations
#
#  id          :integer(4)      not null, primary key
#  entity_type :string(255)
#  entity_key  :integer(4)
#  supports    :boolean(1)
#  user_id     :integer(4)
#  citation_id :integer(4)
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Validation < ActiveRecord::Base
  
  #this creates a virutal column for active scaffold that combines the entity_key and entity_type columns to reduce confusion
  def entity_type_and_key
    "#{entity_type} #{entity_key}"
  end
  
end
