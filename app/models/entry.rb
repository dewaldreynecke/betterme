class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :theme

  has_many_attached :photos

  validates :content, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model

  pg_search_scope :search_by_entry,
                  against: [:title, :content, :address],
                  using: {
                    tsearch: { prefix: true }
                        }

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
