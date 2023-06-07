class Entry < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  has_many_attached :photos
end
