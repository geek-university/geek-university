class CreateCourseUsers < ActiveRecord::Migration
  def change
    create_table :course_users do |t|
      t.references :course
      t.references :user
      t.integer :last_viewed_material
      t.boolean :can_manage

      t.timestamps
    end
    add_index :course_users, [:course_id, :user_id]
  end
end