class Frontend::LettersController < ApplicationController
  def index
    @letters = Letter.paginate(:page => params[:page], :per_page => 25)
  end

  def show
    @letter = Letter.find(params[:id])
  end

end
