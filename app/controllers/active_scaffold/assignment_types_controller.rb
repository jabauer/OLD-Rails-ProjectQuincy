class ActiveScaffold::AssignmentTypesController < ApplicationController

#The following code customizes the interface generated by the active scaffold plugin.
  layout "activescaffold"
  
  active_scaffold :assignment_type do |config|
    
    #displays table name as "Assignment Types"
    config.label = "Assignment Types"
    
    #orders columns
    config.columns = [:id, :name, :notes, :assignment_titles, :created_at, :updated_at]
    
    #adds search functionality for the following columns
    config.columns[:assignment_titles].search_sql = 'assignment_titles.name'
    config.search.columns << :assignment_titles
    
    config.search.columns << :notes
  end
end
