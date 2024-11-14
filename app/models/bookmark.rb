# Each bookmark belongs to one movie and one list.
class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in this list" }

  belongs_to :movie
  belongs_to :list
end
