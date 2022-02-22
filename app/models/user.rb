class User < ApplicationRecord

  has_many :own_tests, class_name: "Test", foreign_key: "author_id"
  has_many :tests_users
  has_many :tests, through: :tests_users

  def all_tests(level)
    self.tests.where(level: level)
  end
end
