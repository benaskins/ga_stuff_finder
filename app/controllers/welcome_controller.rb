class WelcomeController < ApplicationController
  def index
    @classifieds = Classified.all
  end
end
