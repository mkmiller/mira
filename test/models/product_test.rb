require 'test_helper'

# Product model tests
class ProductTest < ActiveSupport::TestCase
  test 'can have vendor' do
    product = products(:product_comic)

    assert_equal 'Comixology', product.vendor.name
  end
end
