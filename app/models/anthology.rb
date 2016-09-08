# Anthology model
class Anthology < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, :slug, presence: true

  has_many :comics
  has_many :products
end
