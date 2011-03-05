class Frontend::AssignmentsSunburstsController < ApplicationController
  
  def index
    
  end
  
  def assign_tree_data
    @assignment_types = AssignmentType.find(:all)
    @assignment_titles = AssignmentTitle.find(:all)
    @assignments = Assignment.find(:all)
    
    respond_to do |format|
      format.js  { render :action => 'assign_tree_data' }
    end
  end

end
