class Paragraph


  def render(chunk)
    # if chunk.start_with?("#####")
    #   chunk.reverse.chop.chop.chop.chop.chop.prepend(">5h<").reverse.prepend("<h5>")
    # elsif chunk.start_with?("####")
    #   chunk.reverse.chop.chop.chop.chop.prepend(">4h/<").reverse.prepend("<h4>")
    if chunk.start_with?('\n') && chunk.end_with?('\n')
      chunk.chop.chop.reverse.chop.chop.prepend(">p/<").reverse.prepend("<p>")
    elsif chunk.end_with?('\n')
      chunk.chop.chop.reverse.prepend(">p/<").reverse
    elsif chunk.start_with?('\n')
      chunk.reverse.chop.chop.reverse.prepend("<p>")
    end
  end

end
