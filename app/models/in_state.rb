# == Schema Information
# Schema version: 20090317194215
#
# Table name: in_states
#
#  id          :integer(4)      not null, primary key
#  location_id :integer(4)
#  state_id    :integer(4)
#  start_year  :integer(4)
#  end_year    :integer(4)
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class InState < ActiveRecord::Base
end
