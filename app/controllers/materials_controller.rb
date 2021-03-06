class MaterialsController < ApplicationController
  load_and_authorize_resource :course
  load_and_authorize_resource :section, :through => :course
  load_and_authorize_resource :material, :through => :section


  before_filter only: [:edit, :new] do |action|
    add_breadcrumb @course.name, @course
  end


  def show
    @sections = @course.sections
    @materials = @section.materials

    render 'courses/show'
  end

  def update
    if @material.update_attributes(params[:material])
      redirect_to [@course, @section, @material]
    else
      render :edit
    end
  end

  def edit
    add_breadcrumb t('breadcrumbs.material.edit', material: @material.name, type: @material.study_material_type), [@material]
  end


  def new
    @material.study_material_type = params[:study_material_type]
    @material.data = {}                      #move to constructor
    add_breadcrumb t('breadcrumbs.material.new', type: @material.study_material_type)
  end

  def create
    if @material.save
      redirect_to [@course, @section]
    else
      render :new
    end
  end

  def destroy
    @material.destroy
    redirect_to [@course, @section]
  end
end
