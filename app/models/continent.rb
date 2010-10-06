# == Schema Information
# Schema version: 20090317194215
#
# Table name: continents
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Continent < ActiveRecord::Base
end
