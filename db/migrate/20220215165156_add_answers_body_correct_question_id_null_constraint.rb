class AddAnswersBodyCorrectQuestionIdNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:answers, :body, false)
    change_column_null(:answers, :correct, false)
    change_column_null(:answers, :question_id, false)
  end
end
