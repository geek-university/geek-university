class CoursesController < ApplicationController
  def preview
    @course = Course.find(params[:id])
  end

  def show
    @course = Course.find(params[:id])
  end

  def apply
    course = Course.find(params[:id])
    current_user.courses<<course
    if current_user.save
      redirect_to show_path(id: params[:id])
    else
      render :preview
    end
  end
end
