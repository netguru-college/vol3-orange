class Trip < ApplicationRecord
  has_many :user_trips
  has_many :users, through: :user_trips
  has_many :places

  scope :past, -> { where('trips.end_date < ?', Date.today)}
  scope :current, -> { where('trips.start_date <= ? AND trips.end_date >= ?', Date.today, Date.today)}
  scope :upcoming, -> { where('trips.start_date > ?', Date.today)}

  has_many :user_trips, dependent: :destroy
  has_many :users, through: :user_trips
  has_many :places, dependent: :destroy

  validates :name, presence: true, length: { in: 2..30 }
  validates :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to: :start_date }

end
