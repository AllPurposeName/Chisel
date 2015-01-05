class Emphasis


  def render(chunk)
    chunk.sub!(/\*/, '<em>')
    chunk.sub(/\*/, '</em>')
  end


end
