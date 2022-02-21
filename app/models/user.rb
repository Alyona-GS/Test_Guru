class User < ApplicationRecord

  has_many :tests
  has_many :tests_users
  has_many :tests, through: :tests_users


  def all_tests(level)
    self.tests.where(level: level)
  end
end
