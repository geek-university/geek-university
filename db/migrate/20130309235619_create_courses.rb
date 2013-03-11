class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :short_summary
      t.text :description
      t.string :organisation
      t.attachment :logo
      t.date :start_date
      t.date :end_date
      t.integer :published

      t.timestamps
    end
  end
end
