# == Schema Information
# Schema version: 20090317194215
#
# Table name: bibliographies
#
#  id         :integer(4)      not null, primary key
#  entry      :text
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Bibliography < ActiveRecord::Base
  
  def to_label
    "#{entry}"
  end
end
