class Frontend::IndividualsController < ApplicationController
  def index
    @individuals = Individual.paginate(:order => "sort_name", :page => params[:page], :per_page => 25)
  end

  def show
    @individual = Individual.find(params[:id])
    opts = {
      :conditions => {:individual_id => params[:id]},
      :page => params[:page],
      :per_page => 25,
      :include => [:location],
      :order => "locations.name, start_year"
    }
    @assignments = Assignment.paginate(opts)
    @validations = Validation.find(:all)
  end
  
  def search
    @individuals = Individual.search(params[:search])
  end

end
