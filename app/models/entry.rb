class Entry < ApplicationRecord
  belongs_to :user
  has_many :contacts, through: :entry_contacts
  has_many :prompts, through: :entry_prompts
  has_many :activities, through: :entry_activities
  enum type: %i[morning daily weekly monthly]
end
