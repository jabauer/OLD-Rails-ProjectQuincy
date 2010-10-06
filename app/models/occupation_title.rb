# == Schema Information
# Schema version: 20090317194215
#
# Table name: occupation_titles
#
#  id                 :integer(4)      not null, primary key
#  name               :string(255)
#  occupation_type_id :integer(4)
#  notes              :text
#  created_at         :datetime
#  updated_at         :datetime
#

class OccupationTitle < ActiveRecord::Base
end
