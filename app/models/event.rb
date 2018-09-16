class Event < ApplicationRecord
  has_many :tickets
  has_many :users, through: :tickets
  validates_associated :tickets
  validates :max_tickets, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }
  validates :name, presence: true

end
