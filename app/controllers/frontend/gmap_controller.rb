class Frontend::GmapController < ApplicationController
  def index
    @locations = Location.find(:all)
  end
end
