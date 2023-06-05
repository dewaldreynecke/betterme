class Activity < ApplicationRecord
  belongs_to :user
  has_many :entries, through: :entry_activities
end
