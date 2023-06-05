class EntryPrompt < ApplicationRecord
  belongs_to :prompt
  belongs_to :entry
end
