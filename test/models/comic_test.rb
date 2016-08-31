require 'test_helper'

# Comic model tests
class ComicTest < ActiveSupport::TestCase
  test 'can create a slug' do
    comic = Comic.create!(name: "Hi there: What's up?")

    assert_equal 'hi-there-what-s-up', comic.slug
  end
end
