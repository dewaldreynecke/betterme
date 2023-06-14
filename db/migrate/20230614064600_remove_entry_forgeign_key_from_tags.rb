class RemoveEntryForgeignKeyFromTags < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :tags, :entries
  end
end
