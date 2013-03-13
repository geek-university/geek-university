class CreateCourseUsers < ActiveRecord::Migration
  def change
    create_table :course_users do |t|
      t.references :course
      t.references :user
      t.references :material
      t.boolean :can_manage
      t.date :last_viewed


      t.timestamps
    end
    add_index :course_users, [:course_id, :user_id]
  end
end
