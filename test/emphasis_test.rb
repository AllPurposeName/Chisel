require 'minitest/autorun'
require 'minitest/pride'
require './lib/emphasis'

class EmphasisTest < Minitest::Test

  def test_it_can_convert_a_paragraph
    emphasis = Emphasis.new
    assert_equal '<em>Emphasis</em>', emphasis.render('*Emphasis*')
  end

end
