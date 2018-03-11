class Exercise < ApplicationRecord
  belongs_to :plan

  validates :title, :description, presence: true
end
