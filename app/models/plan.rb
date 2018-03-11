class Plan < ApplicationRecord
  has_many :exercises

  validates :name, presence: true
end
