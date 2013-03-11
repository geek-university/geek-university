class MaterialsController < ApplicationController
  load_and_authorize_resource :course
  load_and_authorize_resource :section, :through => :course
  load_and_authorize_resource :material, :through => :section


  def show
    @sections = @course.sections
    @materials = @section.materials

    render 'courses/show'
  end
end
