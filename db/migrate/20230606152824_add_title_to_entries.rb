class AddTitleToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :title, :string
  end
end
