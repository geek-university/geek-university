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
    @sections = @course.sections
    @section ||= @sections.first

    @materials = @section.materials
    @material ||= @materials.first
  end

  def apply
    current_user.courses << @course
    if current_user.save
      redirect_to @course
    else
      render :preview
    end
  end

  def edit

  end

  def update
    if @course.update_attributes(params[:course])
      redirect_to @course
    else
      render :edit
    end
  end
end
