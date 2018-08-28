class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_destroy :destroy_dependent
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_trips, dependent: :destroy
  has_many :trips, through: :user_trips

  def destroy_dependent
    trips.each do |trip|
      trip.destroy if trip.users.count == 1
    end
  end
end
