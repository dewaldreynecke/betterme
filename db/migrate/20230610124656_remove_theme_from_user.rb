class RemoveThemeFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :theme, :string
  end
end
