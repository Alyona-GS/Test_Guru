class AddTestsForeignKeyCategoryId < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :tests, :categories
  end
end
