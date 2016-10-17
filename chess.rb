lines = File.open('u1.txt', 'r').read.split("\n").drop(1)

boards = []
lines.each do |line|
  boards << line.split.map(&:to_i)
end

board_sum = [0, 0, 0, 0, 0, 0]

#boards.transpose.map {|piece| piece.inject(:+)}
boards.each do |board|
  board.each_index do |index|
      board_sum[index] += board[index]
    end
  end

complect = [8, 2, 2, 2, 1, 1]
number_of_complect = []
board_sum.each_with_index { |e, i| number_of_complect << e / complect[i] }
puts number_of_complect.min
