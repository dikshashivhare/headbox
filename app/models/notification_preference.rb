class NotificationPreference < ApplicationRecord
  belongs_to :notification_type, optional:true
  has_many :user_notification_preferences
  has_many :users, through: :user_notification_preferences
end
