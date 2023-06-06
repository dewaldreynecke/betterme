class CreateEntryActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :entry_activities do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
