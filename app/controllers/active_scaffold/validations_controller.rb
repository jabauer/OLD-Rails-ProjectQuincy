class ActiveScaffold::ValidationsController < ApplicationController
  
  #The following code customizes the interface generated by the active scaffold plugin.  
    layout "activescaffold"

    active_scaffold :validation do |config|
      #displays table name as "States"
      config.label = "Validations"

      #displays in_states field as Contains Locations
      config.columns[:user].label = "Entered By"
      config.columns[:entity_type].label = "Entity Type"
      config.columns[:entity_key].label = "Entity Id"
      config.columns[:supports].label = "Supports?"

      config.list.columns.exclude :entity_type, :entity_id
      config.list.columns << :entity_type_and_key
      
      config.columns << :entity_type_and_key
      config.columns[:entity_type_and_key].label = "Entity"
      
      #orders columns
      config.columns = [:id, :citation, :supports, :entity_type, :entity_key, :user, :notes, :created_at, :updated_at]
      
      #orders columns in the default list
      config.list.columns = [:id, :citation, :supports, :entity_type_and_key, :user, :notes, :created_at, :updated_at]

      #adds search functionality for the following columns
      config.columns[:citation].search_sql = 'citations.title'
      config.search.columns << :citation

      config.search.columns << :notes
      
      config.search.columns << :entity_type
      
      config.search.columns << :user
      
      config.search.columns << :entity_key
    end
end