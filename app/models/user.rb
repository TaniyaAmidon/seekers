class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_activities, dependent: :destroy
  has_many :activities, through: :user_activities

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :location, :dob, presence: true
  validates :first_name, :last_name, length: { minimum: 2, too_short: "Name must be two characters minimum" }
  validates :bio, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
end
