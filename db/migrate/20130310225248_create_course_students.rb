class CreateCourseStudents < ActiveRecord::Migration
  def change
    create_table :course_students do |t|
      t.references :course
      t.references :student

      t.timestamps
    end
    add_index :course_students, :course_id
    add_index :course_students, :student_id
  end
end
