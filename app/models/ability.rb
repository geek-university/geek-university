class Ability
  include CanCan::Ability

  def initialize(user)
    #user ||= User.new # guest user (not logged in)

    if user
      # manage
      can :manage, Course do |course|
        CourseUser.where(course_id: course.id, user_id: user.id, can_manage: true).count >= 1
      end
      can :manage, Section, course: {users: {id: user.id}}
      can :manage, Material, section: {course: {users: {id: user.id}}}


      # read
      can :show, Course do |course|
        CourseUser.where(course_id: course.id, user_id: user.id).count >= 1
      end

      can :apply, Course do |course|
        CourseUser.where(course_id: course.id, user_id: user.id).count == 0
      end

      can :show, Section, course: {users: {id: user.id}}
      can :read, Material, section: {course: {users: {id: user.id}}}
    end

    can [:index, :preview], Course
  end
end
