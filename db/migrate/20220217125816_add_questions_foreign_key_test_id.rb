class AddQuestionsForeignKeyTestId < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :test, foreign_key: true
  end
end
