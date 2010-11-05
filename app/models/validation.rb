# == Schema Information
# Schema version: 20101102231458
#
# Table name: validations
#
#  id               :integer(4)      not null, primary key
#  validatable_type :string(255)
#  validatable_id   :integer(4)
#  supports         :boolean(1)
#  user_id          :integer(4)
#  citation_id      :integer(4)
#  notes            :text
#  created_at       :datetime
#  updated_at       :datetime
#

class Validation < ActiveRecord::Base
  #this next line sets up the polymorphic association that allows any record in the the database to have a validation recored attached to it
  belongs_to :validatable, :polymorphic => true
  
  #this creates a virutal column for active scaffold that combines the validatable_key and validatable_type columns to reduce confusion
  def validated_record
    "#{validatable_type} #{validatable_id}"
  end
  
#  def to_label
 #   "See citations"
#  end
  
end
