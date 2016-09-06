require 'test_helper'

# Product model tests
class ProductTest < ActiveSupport::TestCase
  test 'can have vendor' do
    product_one = products(:product_one)

    assert_equal 'Comixology', product_one.vendor.name
  end
end
