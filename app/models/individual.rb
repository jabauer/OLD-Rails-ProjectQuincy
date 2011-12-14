# == Schema Information
# Schema version: 20100212200737
#
# Table name: individuals
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  sex               :string(255)
#  birth_date        :date
#  death_date        :date
#  state_id          :integer(4)
#  notes             :text
#  created_at        :datetime
#  updated_at        :datetime
#  sort_name         :string(255)
#  american          :boolean(1)
#  birth_day_known   :boolean(1)
#  birth_month_known :boolean(1)
#  birth_year_known  :boolean(1)
#  death_day_known   :boolean(1)
#  death_month_known :boolean(1)
#  death_year_known  :boolean(1)
#

class Individual < ActiveRecord::Base
  has_many :validations, :as => :validatable
  #this allows the model to be searched on the following fields using the methods defined in lib/searchable.rb
  searchable_by :name, :notes
end
