# == Schema Information
# Schema version: 20090317194215
#
# Table name: occupations
#
#  id                  :integer(4)      not null, primary key
#  individual_id       :integer(4)
#  occupation_title_id :integer(4)
#  start_year          :integer(4)
#  end_year            :integer(4)
#  notes               :text
#  created_at          :datetime
#  updated_at          :datetime
#

class Occupation < ActiveRecord::Base
end
