# == Schema Information
# Schema version: 20091027142206
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
end
