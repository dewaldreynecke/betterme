class AddDateToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :date, :date
  end
end
