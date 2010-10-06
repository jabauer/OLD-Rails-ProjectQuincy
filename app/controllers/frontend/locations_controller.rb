class Frontend::LocationsController < ApplicationController
  def index
    @locations = Location.paginate(:order => "name", :page => params[:page], :per_page => 25)
  end

  def show
    @location = Location.find(params[:id])
    opts = {
      :conditions => {:location_id => params[:id]},
      :page => params[:page],
      :per_page => 25,
      :include => [:location],
      :order => "start_year"
    }
    @assignments = Assignment.paginate(opts)
    @validations = Validation.find(:all)
  end
  
  def search
    @locations = Location.search(params[:search])
  end

end
