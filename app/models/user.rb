class User < ApplicationRecord
  # no join tables created yet - uncomment when available
  # has_many :trips
  # has_many :payments
  # has_many :groups, through: :group_members
  # has_many :activities, through: :user_activities

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :location, :dob, presence: true
  validates :first_name, :last_name, length: { minimum: 2, too_short: "Name must be two characters minimum" }
  validates :bio, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
end
