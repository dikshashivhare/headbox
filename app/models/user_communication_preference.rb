class UserCommunicationPreference < ApplicationRecord
  belongs_to :user,optional: true
  belongs_to :communication_preference,optional: true
end
