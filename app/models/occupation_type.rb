# == Schema Information
# Schema version: 20090317194215
#
# Table name: occupation_types
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class OccupationType < ActiveRecord::Base
end
