require 'minitest/autorun'
require 'minitest/pride'
require './lib/strong_tag'

class StrongTagTest < Minitest::Test

  def test_it_can_convert_a_paragraph
    strong_tag = StrongTag.new
    assert_equal '<strong>StrongTag</strong>', strong_tag.render('**StrongTag**')
  end

end
