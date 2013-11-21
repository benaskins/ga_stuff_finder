class ClassifiedsController < ApplicationController

  def new
    @classified = Classified.new
  end


  def show
    @classified = Classified.find(params[:id])
  end

end
