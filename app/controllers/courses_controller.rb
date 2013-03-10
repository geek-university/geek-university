class CoursesController < ApplicationController
  def preview
    @course = Course.find(params[:id])
  end

  def show
    @course = Course.find(params[:id])
  end
end
