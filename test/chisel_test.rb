require 'minitest/autorun'
require 'minitest/pride'
require '../lib/chisel'

class ChiselTest < Minitest::Test

  def test_it_can_convert_a_header
    chisel = Chisel.new
    assert_equal "<h1>Header</h1>", chisel.grandfather_parse("#Header")
    assert_equal "<h2>Header</h2>", chisel.grandfather_parse("##Header")
  end

  def test_it_is_finished
    chisel = Chisel.new
    assert_equal "<p>
    My favorite cuisines are:
    </p>

    <ul>
    <li>Sushi</li>
    <li>Barbeque</li>
    <li>Mexican</li>
    </ul>
    "   , grandfather_parse("My favorite cuisines are:

    * Sushi
    * Barbeque
    * Mexican")
  end

end
