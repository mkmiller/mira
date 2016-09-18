# Artwork model
class Artwork < ApplicationRecord
  belongs_to :comic

  has_one :comic_page
end
