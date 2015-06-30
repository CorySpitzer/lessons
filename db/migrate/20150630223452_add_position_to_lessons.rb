class AddPositionToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :position, :integer
    remove_column :lessons, :number
  end
end
