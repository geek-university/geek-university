class CreateCourseSections < ActiveRecord::Migration
  def change
    create_table :course_sections do |t|
      t.string :name
      t.date :date
      t.references :course

      t.timestamps
    end
    add_index :course_sections, :course_id
  end
end
