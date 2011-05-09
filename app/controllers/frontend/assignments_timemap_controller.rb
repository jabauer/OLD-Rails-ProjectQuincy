class Frontend::AssignmentsTimemapController < ApplicationController
  layout 'alltext'
  
  def index
  end
  
  def assign_byyear_data
    @assignments = Assignment.find_by_location_id(:order => 'start_year ASC')
#    @assignments = Assignment.find(:all)
    @assignment_titles = AssignmentTitle.find(:all)
    @locations = Location.find(:all)
    
    respond_to do |format|
      format.js  { render :action => 'assign_byyear_data' }
    end
  end

end
