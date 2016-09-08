require 'test_helper'

# Comic model tests
class ComicTest < ActiveSupport::TestCase
  test 'can create a slug' do
    comic = Comic.create!(name: "Hi there: What's up?")

    assert_equal 'hi-there-what-s-up', comic.slug
  end

  test 'can have products' do
    assert_equal 1, comics(:comic_one).products.count
  end

  test 'can have artwork' do
    assert_equal 1, comics(:comic_one).artworks.count
  end

  test 'can have anthology' do
    assert comics(:comic_two).anthology.present?
  end
end
