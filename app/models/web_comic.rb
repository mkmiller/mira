# Web comic model
class WebComic < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, :slug, presence: true

  has_many :comic_pages

  def artworks
    comic_pages.numerical.map(&:artwork)
  end

  def files
    artworks.map(&:file)
  end
end
