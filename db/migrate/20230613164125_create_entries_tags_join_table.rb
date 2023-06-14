class CreateEntriesTagsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :entries, :tags do |t|
      t.index :entry_id
      t.index :tag_id
    end
  end
end
