class LessonBelongsToChapter < ActiveRecord::Migration
  def change
  	create_table :chapters do |t|
      t.string :title

      t.timestamps
    end
 
    create_table :lessons do |t|
      t.belongs_to :chapter
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
