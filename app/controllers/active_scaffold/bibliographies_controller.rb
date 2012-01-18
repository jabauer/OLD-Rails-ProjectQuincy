class ActiveScaffold::BibliographiesController < ApplicationController

#The following code customizes the interface generated by the active scaffold plugin.
  layout "activescaffold"
  
  active_scaffold :bibliography do |config|
    config.columns[:citations].label = "Citation"
    config.columns = [:entry, :citations, :notes, :created_at, :updated_at]
  end
end
