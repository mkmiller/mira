# Comic model
class Comic < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, :slug, presence: true

  has_many :products
end
