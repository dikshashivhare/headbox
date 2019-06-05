class CommunicationPreference < ApplicationRecord
  has_many :user_communication_preferences
  has_many :users, through: :user_communication_preferences
end
