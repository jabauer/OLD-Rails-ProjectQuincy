class ActiveScaffold::UsersController < ApplicationController
  
  #The following code customizes the interface generated by the active scaffold plugin.
  layout "activescaffold"
  
  active_scaffold :user do |config|
    #orders columns
    config.columns = [:id, :name, :notes, :validations, :updated_at, :created_at]
  end
    
end
