# == Schema Information
# Schema version: 20090317194215
#
# Table name: residence_types
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  temporary  :boolean(1)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class ResidenceType < ActiveRecord::Base  
end
