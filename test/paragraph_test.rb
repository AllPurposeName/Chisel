require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph'

class ParagraphTest < Minitest::Test

  def test_it_can_convert_a_paragraph
    paragraph = Paragraph.new
    assert_equal'<p>Paragraph', paragraph.render('\nParagraph')
    assert_equal 'Paragraph</p>', paragraph.render('Paragraph\n')
    assert_equal '<p>Paragraph</p>', paragraph.render('\nParagraph\n')
  end



end
