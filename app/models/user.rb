class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :communication_preferences, through: :user_communication_preferences
  has_one :company
  has_many :user_notification_preferences
  has_many :notification_preferences, through: :user_notification_preferences
  has_many :listings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{self.first_name} #{self.last_name}"  
  end
end
