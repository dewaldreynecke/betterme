class Contact < ApplicationRecord
  belongs_to :user
  has_many :entries, through: :entry_contacts
end
