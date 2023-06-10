class ChangeTextInThemes < ActiveRecord::Migration[7.0]
  def change
    change_column :themes, :text, :string
  end
end
