require 'test_helper'

# Web comic model tests
class WebComicTest < ActiveSupport::TestCase
  test 'has two pages' do
    assert_equal 2, web_comics(:web_comic_one).comic_pages.count
  end
end
