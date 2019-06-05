class UserNotificationPreference < ApplicationRecord
  belongs_to :user,optional: true
  belongs_to :notification_preference,optional: true
end
