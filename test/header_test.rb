require 'minitest/autorun'
require 'minitest/pride'
require '../lib/header'

class HeaderTest < Minitest::Test

  def test_it_can_convert_a_header
    header = Header.new
    assert_equal "<h1>Header</h1>", header.header_render("#Header")
    assert_equal "<h2>Header</h2>", header.header_render("##Header")
    assert_equal "<h3>Header</h3>", header.header_render("###Header")
    assert_equal "<h4>Header</h4>", header.header_render("####Header")
    assert_equal "<h5>Header</h5>", header.header_render("#####Header")

  end


end
