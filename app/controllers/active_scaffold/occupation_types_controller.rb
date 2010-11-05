class ActiveScaffold::OccupationTypesController < ApplicationController
  
#The following code customizes the interface generated by the active scaffold plugin.  
  layout "activescaffold"
  
  active_scaffold :occupation_type do |config|
    config.label = "Occupation Types"
    config.columns = [:name, :notes, :occupation_titles, :created_at, :updated_at]
  end
end
