# == Schema Information
# Schema version: 20100212200737
#
# Table name: letters
#
#  id                   :integer(4)      not null, primary key
#  from_individual_id   :integer(4)
#  from_organization_id :integer(4)
#  from_location_id     :integer(4)
#  to_individual_id     :integer(4)
#  to_organization_id   :integer(4)
#  to_location_id       :integer(4)
#  circular             :boolean(1)
#  date_sent            :date
#  date_received        :date
#  date_docketed        :date
#  notes                :text
#  created_at           :datetime
#  updated_at           :datetime
#  title                :string(255)
#  sent_day_known       :boolean(1)
#  sent_month_known     :boolean(1)
#  sent_year_known      :boolean(1)
#  received_day_known   :boolean(1)
#  received_month_known :boolean(1)
#  received_year_known  :boolean(1)
#  docketed_day_known   :boolean(1)
#  docketed_month_known :boolean(1)
#  docketed_year_known  :boolean(1)
#

class Letter < ActiveRecord::Base
end
