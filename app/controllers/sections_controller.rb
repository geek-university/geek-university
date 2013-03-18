class SectionsController < ApplicationController
  load_and_authorize_resource :course
  load_and_authorize_resource :section, :through => :course
  load_and_authorize_resource :material, :through => :section

  #add_breadcrumb 'Course', course_path(@course)

  before_filter only: [:edit, :new] do |action|
    add_breadcrumb @course.name, @course
  end



  def show
    @sections = @course.sections
    @materials = @section.materials
    @material = @materials.first

    render 'courses/show'
  end

  def edit
    add_breadcrumb t('breadcrumbs.sections.edit', section: @section.name), [@section]
  end

  def new
    add_breadcrumb :new
  end

  def update
    if @section.update_attributes(params[:section])
      redirect_to [@course, @section]
    else
      render :edit
    end
  end

  def create
    @section = Section.new(params[:section])
    if @section.save
      redirect_to [@course, @section]
    else
      render :new
    end
  end

  def destroy
    @section.destroy
    redirect_to [@course]
  end
end
