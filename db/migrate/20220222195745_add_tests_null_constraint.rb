class AddTestsNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:tests, :level, false)
    change_column_null(:tests, :category_id, false)
    change_column_null(:tests, :author_id, false)
  end
end
