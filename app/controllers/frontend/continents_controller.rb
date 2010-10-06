class Frontend::ContinentsController < ApplicationController
  def index
    @continents = Continent.find(:all)
  end

  def show
    @continent = Continent.find(params[:id])
  end

end
