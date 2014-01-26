class AddLessonToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :lesson, index: true
  end
end
