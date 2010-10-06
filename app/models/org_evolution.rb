# == Schema Information
# Schema version: 20100212200737
#
# Table name: org_evolutions
#
#  id                    :integer(4)      not null, primary key
#  org_1_id              :integer(4)
#  org_2_id              :integer(4)
#  org_evolution_type_id :integer(4)
#  date                  :date
#  notes                 :text
#  created_at            :datetime
#  updated_at            :datetime
#  day_known             :boolean(1)
#  month_known           :boolean(1)
#  year_known            :boolean(1)
#

class OrgEvolution < ActiveRecord::Base
end
