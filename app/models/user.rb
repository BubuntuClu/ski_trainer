class User < ApplicationRecord
  has_many :performed_exercises, foreign_key: :user_id, dependent: :destroy

  validates_uniqueness_of :telegram_id
  validates :gender, inclusion: { in: :gender }, allow_blank: true
  validates :plan_id, inclusion: { in: Plan.ids }, allow_blank: true
  
  enum gender: [:ghost, :male, :female, :other]

  def updated_field?(field, value)
    public_send(field + '=', value.to_i)
    save!
    true
  rescue
    false
  end
end
