class ActiveScaffold::InEmpiresController < ApplicationController
  
#The following code customizes the interface generated by the active scaffold plugin.  
  layout "activescaffold"
  
  active_scaffold :in_empire do |config|
    config.label = "In Empires: Linking Table for States and Empires"
    config.columns = [:id, :empire, :state, :start_year, :end_year, :notes, :created_at, :updated_at]
  end  
end