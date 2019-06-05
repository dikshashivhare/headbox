class CreateUserNotificationPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :user_notification_preferences do |t|
      t.references :user, foreign_key: true
      t.references :notification_preference, foreign_key: true, index: { name: "notification_preferenceable_index" }

      t.timestamps
    end
  end
end
