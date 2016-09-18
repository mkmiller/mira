# Comic page model tests
class ComicPageTest < ActiveSupport::TestCase
  test 'has two fixtures' do
    assert_equal 2, ComicPage.count
  end
end
