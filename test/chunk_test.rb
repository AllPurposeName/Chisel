require 'minitest/autorun'
require 'minitest/pride'
require '../lib/chunk'

class ChunkTest < Minitest::Test

  def test_it_can_convert_3_newlines_into_chunks
    chunks = Chunk.new.file_intake("file_1.txt")
    assert_equal "Hello this is DJ\n", chunks[0]
    assert_equal "And I am testing\n", chunks[1]
    assert_equal "On a text file!\n", chunks[2]
  end


end
