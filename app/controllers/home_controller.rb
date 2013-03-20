class HomeController < ApplicationController
  def index
    if current_user
      @courses = Course.joins(:course_users).where(course_users: { user_id:  current_user.id })
      if @courses.empty?
        redirect_to courses_path
      end
    else
      @courses = Course.all
    end
  end

  def about
  end
end
