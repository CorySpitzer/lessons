class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :content
      t.integer :section_id
      
      t.timestamps
    end

    create_table :sections do |t|
      t.string :heading

      t.timestamps
    end
  end
end
