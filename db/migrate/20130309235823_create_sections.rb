class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.date :date
      t.float :position
      t.references :course


      t.timestamps
    end
    add_index :sections, :course_id
  end
end
