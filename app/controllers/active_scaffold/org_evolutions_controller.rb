class ActiveScaffold::OrgEvolutionsController < ApplicationController
  
#The following code customizes the interface generated by the active scaffold plugin.  
  layout "activescaffold"
  
  active_scaffold :org_evolution do |config|
    config.label = "Changes in Organizations"
    config.columns[:org_1].label = "Organization: 1"
    config.columns[:org_2].label = "Organization: 2"
    config.columns[:org_evolution_type].label = "Type of Organizational Change (1 --> 2)"
    config.columns = [:org_1, :org_2, :org_evolution_type, 
                      :date, :year_known, :month_known, :day_known, 
                      :notes, 
                      :created_at, :updated_at]
  end
end
