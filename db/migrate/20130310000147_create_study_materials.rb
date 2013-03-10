class CreateStudyMaterials < ActiveRecord::Migration
  def change
    create_table :study_materials do |t|
      t.string :name
      t.float :order
      t.text :data
      t.references :course_section

      t.timestamps
    end
    add_index :study_materials, :course_section_id
  end
end
