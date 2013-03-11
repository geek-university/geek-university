class CoursesController < ApplicationController
  load_and_authorize_resource

  def preview
    authorize! :preview, @course
  end

  def index
  end

  def show
  end

  def apply
    current_user.courses << @course
    if current_user.save
      redirect_to show_path(params[:id])
    else
      render :preview
    end
  end
end
