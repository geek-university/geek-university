class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.float :order
      t.text :data
      t.references :section

      t.timestamps
    end
    add_index :materials, :section_id
  end
end
