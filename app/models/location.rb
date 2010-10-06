# == Schema Information
# Schema version: 20090317194215
#
# Table name: locations
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  lat        :float
#  long       :float
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Location < ActiveRecord::Base
  #this allows the model to be searched on the following fields using the methods defined in lib/searchable.rb
  searchable_by :name, :notes
end
