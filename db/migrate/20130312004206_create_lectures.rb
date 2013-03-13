class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :youtube_link

      t.timestamps
    end
  end
end
