class CoursesController < ApplicationController
  load_and_authorize_resource

  def preview
    authorize! :preview, @course
  end

  def index
  end

  def show
    @course = Course.find(params[:course_id])
    @course_sections = @course.course_sections.order('"course_sections.order"')
    @selected_course_section = @course_sections.find(params[:section_id])
    @selected_study_material = params[:id] != 0 ? @selected_course_section.study_materials.find(params[:id]) : @selected_course_section.study_materials.first
  end

  def apply
    current_user.courses << @course
    if current_user.save
      redirect_to :action => :show, :id => params[:id]
    else
      render :preview
    end
  end
end
