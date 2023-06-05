class Prompt < ApplicationRecord
  has_many :entries, through: :entry_prompts
end
