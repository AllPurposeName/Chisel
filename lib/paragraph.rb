class Paragraph


  def paragraph_render(chunk)
    if chunk.start_with?('\n') && chunk.end_with?('\n')
      chunk.chop.chop.reverse.chop.chop.prepend(">p/<").reverse.prepend("<p>")
    elsif chunk.end_with?('\n')
      chunk.chop.chop.reverse.prepend(">p/<").reverse
    elsif chunk.start_with?('\n')
      chunk.reverse.chop.chop.reverse.prepend("<p>")
    end
  end

end
