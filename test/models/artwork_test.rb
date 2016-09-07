require 'test_helper'

# Artwork model tests
class ArtworkTest < ActiveSupport::TestCase
  test 'has one fixtures' do
    assert_equal 1, Artwork.count
  end
end
