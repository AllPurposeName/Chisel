class List

  def unordered_list_render(chunk)
    if chunk.start_with?('* ')

      chunk.reverse.chop.chop.prepend('>lu/<n/>il/<').reverse.prepend('<ul>/n<li>')
    end
  end

  def ordered_list_render(chunk)
    if chunk.include?('1. ')
      # chunk.find('* ')
      chunk.start_with?('* ')
      chunk.reverse.chop.chop.prepend('>lu/<n/>il/<').reverse.prepend('<ul>/n<li>')
    end

  end

# * Sushi
# * Barbeque
# * Mexican


end
