class Frontend::AssignmentTitlesController < ApplicationController
  def index
    @assignment_titles = AssignmentTitle.paginate(:order => "name", :page => params[:page], :per_page => 25)
  end

  def show
    @assignment_title = AssignmentTitle.find(params[:id])
    opts = {
      :conditions => {:assignment_title_id => params[:id]},
      :page => params[:page],
      :per_page => 25,
      :include => [:location],
      :order => "locations.name, start_year"
    }
    @assignments = Assignment.paginate(opts)

    @validations = Validation.find(:all)
    
  end

  def search
    @assignment_titles = AssignmentTitle.search(params[:search])
  end
  
end
