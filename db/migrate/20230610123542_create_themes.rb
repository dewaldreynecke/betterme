class CreateThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.text :text
      t.datetime :start
      t.datetime :end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
