class ActiveScaffold::OrgEvolutionTypesController < ApplicationController
  
#The following code customizes the interface generated by the active scaffold plugin.  
  layout "activescaffold"
  
  active_scaffold :org_evolution_type do |config|
    config.label = "Types of Organizational Changes"
    config.columns[:org_evolutions].label = "Organizations that Changed"
    config.columns = [:id, :name, :org_evolutions, :notes, :created_at, :updated_at]
  end
end