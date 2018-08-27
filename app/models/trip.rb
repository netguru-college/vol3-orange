class Trip < ApplicationRecord
  has_many :user_trips
  has_many :users, through: :user_trips
  has_many :places

  scope :past, -> { where('trips.start_date < ? AND trips.end_date < ?', Date.today, Date.today)}
  scope :current, -> { where('trips.start_date < ? AND trips.end_date > ?', Date.today, Date.today)}
  scope :upcoming, -> { where('trips.start_date > ? AND trips.end_date > ?', Date.today, Date.today)}

end
