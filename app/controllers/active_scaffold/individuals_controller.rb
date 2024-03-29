class ActiveScaffold::IndividualsController < ApplicationController

#The following code customizes the interface generated by the active scaffold plugin.
  layout "activescaffold"
  
  active_scaffold :individual do |config|
    config.label = "Individuals"
    config.columns = [:name,  :state, :sex,
                      :birth_date, :birth_year_known, :birth_month_known, :birth_day_known, 
                      :death_date, :death_year_known, :death_month_known, :death_day_known, 
                      :assignments, :occupations, :members, :residences, :letters, 
                      :notes, :validations, :updated_at, :created_at]
  end  
end
