require 'test_helper'

# Anthology model tests
class AnthologyTest < ActiveSupport::TestCase
  test 'can create a slug' do
    anthology = Anthology.create!(name: 'I am an anthology')

    assert_equal 'i-am-an-anthology', anthology.slug
  end

  test 'can have products' do
    assert_equal 1, anthologies(:anthology_one).products.count
  end
end
