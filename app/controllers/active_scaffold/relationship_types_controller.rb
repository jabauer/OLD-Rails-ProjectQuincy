class ActiveScaffold::RelationshipTypesController < ApplicationController
  
#The following code customizes the interface generated by the active scaffold plugin.  
  layout "activescaffold"
  
  active_scaffold :relationship_type do |config|
    config.label = "Relationship Types"
    config.columns = [:id, :name, :relationships, :notes, :created_at, :updated_at]
  end
end