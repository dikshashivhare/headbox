class CreateUserCommunicationPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :user_communication_preferences do |t|
      t.references :user, foreign_key: true
      t.references :communication_preference, foreign_key: true, index: { name: "communication_preferenceable_index" }

      t.timestamps
    end
  end
end
