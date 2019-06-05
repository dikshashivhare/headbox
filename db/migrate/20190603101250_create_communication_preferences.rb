class CreateCommunicationPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :communication_preferences do |t|
      t.string :title

      t.timestamps
    end
  end
end
