require 'minitest/autorun'
require 'minitest/pride'
require_relative 'chisel'

class ChiselTest < Minitest::Test

  def test_it_can_convert_a_header
    chisel = Chisel.new
    assert_equal "<h1>Header</h1>", chisel.parse("#Header")
    assert_equal "<h2>Header</h2>", chisel.parse("##Header")
  end





end
