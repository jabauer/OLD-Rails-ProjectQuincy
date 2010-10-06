class Frontend::StatesController < ApplicationController
  def index
    @states = State.paginate(:order => 'name', :page => params[:page], :per_page => 25)
  end

  def show
    @state = State.find(params[:id])
  end

end
