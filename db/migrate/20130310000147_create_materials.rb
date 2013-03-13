class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials, as_relation_superclass: true do |t|
      t.string :name
      t.float :position
      t.references :section

      t.timestamps
    end
    add_index :materials, :section_id
  end
end
