class HomeController < ApplicationController
  def index
    @courses = Course.all
    if current_user
      if current_user.student?
        @courses = Course.joins(:course_students).where(course_students: { student_id:  current_user.id})
      elsif current_user.teacher?
        @courses = Course.joins(:course_teachers).where(course_teachers: { teacher_id:  current_user.id})
      end
    end
  end

  def about
  end
end
