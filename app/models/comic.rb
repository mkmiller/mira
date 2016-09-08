# Comic model
class Comic < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, :slug, presence: true

  belongs_to :anthology
  has_many :artworks
  has_many :products
end
