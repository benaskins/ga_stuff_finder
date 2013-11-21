class WelcomeController < ApplicationController
  def index
    @classifieds = Classified.all
    debugger
    @title = "Some text"
  end
end
