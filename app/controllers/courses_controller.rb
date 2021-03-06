class CoursesController < ApplicationController
  load_and_authorize_resource
  load_resource :section, :through => :course, :shallow => true
  load_resource :material, :through => :section, :shallow => true

  def preview
    authorize! :preview, @course

    if user_signed_in?
      redirect_to @course if @course.subscibe?(current_user)
    end
  end

  def index
    @courses = Course.order('start_date desc')
  end

  def show
    @sections = @course.sections
    @section ||= @sections.first

    @materials = @section.nil? ? [] : @section.materials
    @material ||= @materials.first
  end

  def apply
    @course.users << current_user
    if @course.save
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
