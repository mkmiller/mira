require 'test_helper'

# Artwork model tests
class ArtworkTest < ActiveSupport::TestCase
  test 'has two fixtures' do
    assert_equal 2, Artwork.count
  end
end
