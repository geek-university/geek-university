class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #

    #user ||= User.new # guest user (not logged in)

    if user
      can :manage, Course do |course|
        CourseTeacher.where(course_id: course.id, teacher_id: user.id).count >= 1
      end
      can :manage, Section, course: {teachers: {id: user.id}}
      can :manage, Material, section: {course: {teachers: {id: user.id}}}

      can :show, Course do |course|
        CourseStudent.where(course_id: course.id, student_id: user.id).count >= 1
      end

      #can :apply, Course if user.student?
      can :apply, Course do |course|
        CourseStudent.where(course_id: course.id, student_id: user.id).count == 0
      end

      can :show, Section, course: {students: {id: user.id}}
      can :manage, Material, section: {course: {students: {id: user.id}}}



      #
      # , Section, Material] if user.teacher?
      #end
      #can [:show, :apply], [Course, Section, Material]  if user.student?
    end

    can [:index, :preview], Course
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
