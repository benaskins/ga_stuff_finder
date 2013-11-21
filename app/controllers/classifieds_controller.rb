class ClassifiedsController < ApplicationController
  def show
    @classified = Classified.find(params[:id])
  end
end
