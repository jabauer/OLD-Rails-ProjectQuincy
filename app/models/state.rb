# == Schema Information
# Schema version: 20090317194215
#
# Table name: states
#
#  id           :integer(4)      not null, primary key
#  name         :string(255)
#  continent_id :integer(4)      not null
#  notes        :text
#  created_at   :datetime
#  updated_at   :datetime
#

class State < ActiveRecord::Base
end
