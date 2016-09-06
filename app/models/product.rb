# A product provides a url to buy the comic and links the comic to its vendor.
class Product < ApplicationRecord
  validates :url, presence: true

  belongs_to :comic
  belongs_to :vendor
end
