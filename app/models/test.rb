class Test < ApplicationRecord

  has_many :test_users
  has_many :questions
  has_many :users, through: :test_users

  belongs_to :category
  belongs_to :user

  def self.all_from(category)
    self.joins(:category).where('categories.title = ?', category).order(title: :desc).pluck(:title)
  end
end
