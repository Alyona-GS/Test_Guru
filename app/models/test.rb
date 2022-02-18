class Test < ApplicationRecord
  def self.all_from (category)
    category_id = Category.find_by(title: category).id
    self.where(category_id: category_id).pluck(:title).sort.reverse
  rescue StandardError => e
    puts "Category hasn't been found"
  end
end
