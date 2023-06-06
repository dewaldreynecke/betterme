class RemoveTypeFromEntries < ActiveRecord::Migration[7.0]
  def change
    remove_column :entries, :type, :string
  end
end
