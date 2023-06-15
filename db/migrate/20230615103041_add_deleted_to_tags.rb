class AddDeletedToTags < ActiveRecord::Migration[7.0]
  def change
    add_column :tags, :deleted, :boolean
  end
end
