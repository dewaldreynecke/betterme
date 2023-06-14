class RemoveEntryIdFromTags < ActiveRecord::Migration[7.0]
  def change
    remove_column :tags, :entry_id, :bigint
  end
end
