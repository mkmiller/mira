# Comic page model
class ComicPage < ApplicationRecord
  validates :number, presence: true

  belongs_to :artwork
  belongs_to :web_comic

  scope :numerical, -> { order('number ASC') }
end
