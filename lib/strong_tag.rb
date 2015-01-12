class StrongTag


  def strong_tag_render(chunk)
    chunk.sub!(/\*\S/, '<strong>')
    chunk.sub(/\*\S/, '</strong>')
  end


end
