class AddAnswersForeignKeyQuestionId < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :question_id
    add_reference :answers, :question, foreign_key: true
  end
end
