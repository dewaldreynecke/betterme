class AddDateToMoods < ActiveRecord::Migration[7.0]
  def change
    add_column :moods, :date, :date
  end
end
