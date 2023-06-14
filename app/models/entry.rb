class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :theme
  has_and_belongs_to_many :tags

  has_many_attached :photos

  validates :content, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def index
    @entries = Entry.all
    @markers = @entries.geocoded.map do |entry|
      {
        lat: entry.latitude,
        lng: entry.longitude
      }
    end
  end
end
