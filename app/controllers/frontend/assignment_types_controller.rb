class Frontend::AssignmentTypesController < ApplicationController
  def index
    @assignment_types = AssignmentType.paginate(:order => "name", :page => params[:page], :per_page => 25)
  end

  def show
    @assignment_type = AssignmentType.find(params[:id])
  end

end
