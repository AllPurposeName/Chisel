class Emphasis


  def emphasis_render(chunk)
    chunk.sub!(/\*/, '<em>')
    chunk.sub(/\*/, '</em>')
  end


end
