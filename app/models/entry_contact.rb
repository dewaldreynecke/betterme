class EntryContact < ApplicationRecord
  belongs_to :entry
  belongs_to :contact
end
