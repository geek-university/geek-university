class CoursesController < ApplicationController
  load_and_authorize_resource
  load_resource :section, :through => :course
  load_resource :material, :through => :section

  def preview
    authorize! :preview, @course
  end

  def index
  end

  def show
    #@course = Course.includes(:sections).find(params[:id])
    @sections = @course.sections.order('"order ASC"')
    @section ||= @sections.first

    logger.debug @section
    @material ||= @section.materials.first
  end

  def apply
    current_user.courses << @course
    if current_user.save
      redirect_to @course
    else
      render :preview
    end
  end
end
