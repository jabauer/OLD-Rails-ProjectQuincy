class Frontend::AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.paginate(:page => params[:page], :per_page => 25)
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

end
