class RemoveLogoFromCourse < ActiveRecord::Migration
  def up
    remove_column :courses, :logo
  end

  def down
    add_column :courses, :logo, :string
  end
end
