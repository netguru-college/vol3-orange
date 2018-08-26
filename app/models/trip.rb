class Trip < ApplicationRecord
  has_many :user_trips
  has_many :users, through: :user_trips
  has_many :places

  validates :name, presence: true, length: { in: 2..30 }
  validates :start_date, :end_date, presence: true
end
