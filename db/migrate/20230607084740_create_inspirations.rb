class CreateInspirations < ActiveRecord::Migration[7.0]
  def change
    create_table :inspirations do |t|
      t.string :text

      t.timestamps
    end
  end
end
