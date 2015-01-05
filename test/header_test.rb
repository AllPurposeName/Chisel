require 'minitest/autorun'
require 'minitest/pride'
require './lib/header'

class HeaderTest < Minitest::Test

  def test_it_can_convert_a_header
    header = Header.new
    assert_equal "<h1>Header</h1>", header.render("#Header")
    assert_equal "<h2>Header</h2>", header.render("##Header")
  end


end
