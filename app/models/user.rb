class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable
  before_destroy :destroy_dependent
  devise :invitable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :user_trips, dependent: :destroy
  has_many :trips, through: :user_trips

  def destroy_dependent
    trips.each do |trip|
      trip.destroy if trip.users.count == 1
    end
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    unless user
      user = User.create(
       email: data['email'],
       password: Devise.friendly_token[0,20]
      )
    end
    user
  end
end
