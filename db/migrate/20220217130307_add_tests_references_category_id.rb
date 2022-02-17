class AddTestsReferencesCategoryId < ActiveRecord::Migration[7.0]
  def change
    remove_column :tests, :category_id
    add_reference :tests, :category
  end
end
