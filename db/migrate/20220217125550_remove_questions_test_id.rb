class RemoveQuestionsTestId < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :test_id, :integer
  end
end
