class NotificationType < ApplicationRecord
  has_many :notification_preferences
end
