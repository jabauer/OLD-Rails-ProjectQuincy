class Frontend::RegionsController < ApplicationController
def index
  @regions = Region.paginate(:order => 'name', :page => params[:page], :per_page => 25)
end

def show
  @region = Region.find(params[:id])
end

end
