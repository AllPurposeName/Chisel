class ReadLine

  def file_intake(file)
    @board = []
    File.readlines(boardfile).each do |line|
      chunk = line.delete("\n").split("")
      game_row.each_with_index { |number_string, index| game_row[index] = number_string.to_i}
      @board << game_row
    end
    self.spot_make
  end

end
