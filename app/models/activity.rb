class Activity < ApplicationRecord
  has_many :entries, through: :entry_activities
end
