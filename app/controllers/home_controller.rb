class HomeController < ApplicationController
  def index
    if user_signed_in?
      @profile = current_user
    else
      @profile = User.new
    end
  end
end
