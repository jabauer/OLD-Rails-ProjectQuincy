# == Schema Information
# Schema version: 20090317194215
#
# Table name: in_empires
#
#  id         :integer(4)      not null, primary key
#  state_id   :integer(4)
#  empire_id  :integer(4)
#  start_year :integer(4)
#  end_year   :integer(4)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class InEmpire < ActiveRecord::Base
end
