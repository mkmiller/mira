require 'test_helper'

# Vendor
class VendorTest < ActiveSupport::TestCase
  test 'has two fixtures' do
    assert_equal 2, Vendor.count
  end
end
