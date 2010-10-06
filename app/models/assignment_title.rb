# == Schema Information
# Schema version: 20090317194215
#
# Table name: assignment_titles
#
#  id                 :integer(4)      not null, primary key
#  name               :string(255)
#  assignment_type_id :integer(4)
#  temporary          :boolean(1)
#  commissioned       :boolean(1)
#  notes              :text
#  created_at         :datetime
#  updated_at         :datetime
#

class AssignmentTitle < ActiveRecord::Base
  #this allows the model to be searched on the following fields using the methods defined in lib/searchable.rb
  searchable_by :name, :notes
end
