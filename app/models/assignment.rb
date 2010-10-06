# == Schema Information
# Schema version: 20090317194215
#
# Table name: assignments
#
#  id                  :integer(4)      not null, primary key
#  individual_id       :integer(4)
#  assignment_title_id :integer(4)
#  location_id         :integer(4)
#  start_year          :integer(4)
#  start_certain       :boolean(1)
#  end_year            :integer(4)
#  end_certain         :boolean(1)
#  notes               :text
#

class Assignment < ActiveRecord::Base
end
