require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'

class ListTest < Minitest::Test

  def list
    @list
  end

  def setup
    @list = List.new
  end

  def test_it_can_turn_a_single_line_into_list_format
    assert_equal '<ul>/n<li>Sushi</li>/n</ul>', @list.unordered_list_render("* Sushi")
  end

  # def test_it_can_turn_mulitple_lines_into_correct_format
  #   assert_equal '<ul>/n<li>Sushi</li>/n', @list.render('* Sushi
  #   * Barbeque
  #   * Mexican
  #   ')
  # end

end
