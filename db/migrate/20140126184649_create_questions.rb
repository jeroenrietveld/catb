class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :answer
      t.boolean :correct

      t.timestamps
    end
  end
end
