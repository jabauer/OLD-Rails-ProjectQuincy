class Frontend::RelationBrowserController < ApplicationController
  def index
    
  end
  
  def relate
    
    @individuals = Individual.find(:all)
    @locations = Location.find(:all)
    @assignment_titles = AssignmentTitle.find(:all)
    @assignments = Assignment.find(:all)
    @states = State.find(:all)
    @in_states = InState.find(:all)
    @continents = Continent.find(:all)
    
    respond_to do |format|
      format.xml  { render :action => 'relate' }
    end
  end
end
