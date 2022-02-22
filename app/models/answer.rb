class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_quantity
  validates_associated :question

  scope :correct, -> { where(correct: true) }

  private

  def validate_quantity
    errors.add(:question_id) unless (1..4).include?(Answer.where(question_id: question_id).count)
  end
end
