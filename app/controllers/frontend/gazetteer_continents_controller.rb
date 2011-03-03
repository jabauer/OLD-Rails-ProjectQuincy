class Frontend::GazetteerContinentsController < ApplicationController
  
  layout "alltext"
  
  def index
    
  end
  
  def geo_tree_data 
    
    @locations = Location.find(:all)
    @assignments = Assignment.find(:all)
    @states = State.find(:all)
    @in_states = InState.find(:all)
    @continents = Continent.find(:all)
    
    respond_to do |format|
      format.js  { render :action => 'geo_tree_data' }
    end
    
  end
  
end
