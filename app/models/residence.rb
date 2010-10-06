# == Schema Information
# Schema version: 20090317194215
#
# Table name: residences
#
#  id                :integer(4)      not null, primary key
#  individual_id     :integer(4)
#  location_id       :integer(4)
#  residence_type_id :integer(4)
#  start_year        :integer(4)
#  end_year          :integer(4)
#  birth_place       :boolean(1)
#  death_place       :boolean(1)
#  notes             :text
#  created_at        :datetime
#  updated_at        :datetime
#

class Residence < ActiveRecord::Base
end
