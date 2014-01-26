class QuestionCorrectBoolToString < ActiveRecord::Migration
  def change
  	change_column :questions, :correct, :string, :default => "empty"
  end
end
