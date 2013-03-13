class HomeController < ApplicationController
  def index
    @courses = Course.all
    if current_user
      @courses = Course.joins(:course_users).where(course_users: { user_id:  current_user.id })
    end
  end

  def about
  end
end
