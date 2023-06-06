class Mood < ApplicationRecord
  belongs_to :user
  enum mood: %i[terrible bad okay happy awesome]
end
