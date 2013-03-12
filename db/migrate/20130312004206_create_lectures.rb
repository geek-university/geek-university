class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :youtube_link
      t.references :content, :polymorphic => true

      t.timestamps
    end
  end
end
