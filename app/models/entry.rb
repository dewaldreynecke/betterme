class Entry < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  has_many :contacts, through: :entry_contacts
  has_many :prompts, through: :entry_prompts
  has_many :activities, through: :entry_activities
  enum type: %i[morning daily weekly monthly]
=======
  has_many_attached :photos

  validates :content, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
>>>>>>> origin
end
