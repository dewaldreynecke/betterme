class CreateEntryPrompts < ActiveRecord::Migration[7.0]
  def change
    create_table :entry_prompts do |t|
      t.text :content
      t.references :prompt, null: false, foreign_key: true
      t.references :entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
