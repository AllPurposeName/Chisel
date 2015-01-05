class StrongTag


  def render(chunk)
    chunk.sub!(/\*\S/, '<strong>')
    chunk.sub(/\*\S/, '</strong>')
  end


end
