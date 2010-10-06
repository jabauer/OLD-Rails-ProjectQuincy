# == Schema Information
# Schema version: 20090317194215
#
# Table name: citations
#
#  id              :integer(4)      not null, primary key
#  title           :string(255)
#  bibliography_id :integer(4)
#  pages           :string(255)
#  canonic_url     :string(255)
#  notes           :text
#  created_at      :datetime
#  updated_at      :datetime
#

class Citation < ActiveRecord::Base
end
