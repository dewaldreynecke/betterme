class AddThemeReferenceToEntries < ActiveRecord::Migration[7.0]
  def change
    add_reference :entries, :theme, null: false, foreign_key: true
  end
end
