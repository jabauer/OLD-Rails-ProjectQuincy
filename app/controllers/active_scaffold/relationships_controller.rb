class ActiveScaffold::RelationshipsController < ApplicationController
  
#The following code customizes the interface generated by the active scaffold plugin.  
  layout "activescaffold"
  
  active_scaffold :relationship do |config|
    config.label = "Relationships"
    config.columns[:individual_id_1].label = "Person 1"
    config.columns[:individual_id_2].label = "Person 2"
    config.columns[:relationship_type].label = "Relationship Type 1 --> 2"
    config.columns = [:relationship_type, :individual_id_1, :individual_id_2, :start_year, :end_year, :notes, :created_at, :updated_at]
  end
end
