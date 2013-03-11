class SectionsController < ApplicationController
  load_and_authorize_resource :course
  load_and_authorize_resource :section, :through => :course
  load_and_authorize_resource :material, :through => :section

  def show
    @sections = @course.sections
    @materials = @section.materials
    @material = @materials.first

    render 'courses/show'
  end
end
