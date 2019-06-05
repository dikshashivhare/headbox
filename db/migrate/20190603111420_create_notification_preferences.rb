class CreateNotificationPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :notification_preferences do |t|
      t.string :title
      t.string :status
      t.references :notification_type, foreign_key: true

      t.timestamps
    end
  end
end
