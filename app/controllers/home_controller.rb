class HomeController < ApplicationController
  def index
    @courses = Course.all
  end

  def about
  end
end
