class CreateMoods < ActiveRecord::Migration[7.0]
  def change
    create_table :moods do |t|
      t.integer :mood
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
