# == Schema Information
# Schema version: 20090317194215
#
# Table name: in_regions
#
#  id          :integer(4)      not null, primary key
#  location_id :integer(4)
#  region_id   :integer(4)
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class InRegion < ActiveRecord::Base
end
