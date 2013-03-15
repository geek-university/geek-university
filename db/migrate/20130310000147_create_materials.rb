class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.float :position
      t.references :section
      t.string :study_material_type
      t.text :data

      t.timestamps
    end
    add_index :materials, :section_id
  end
end
