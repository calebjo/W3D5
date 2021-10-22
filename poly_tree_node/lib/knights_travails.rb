require_relative "00_tree_node.rb"

class KnightPathFinder
    attr_reader :starting_pos

    def initialize(starting_pos)
        @starting_pos = starting_pos
        @root_node = PolyTreeNode.new(starting_pos)
        @considered_pos = [starting_pos]
    end

    def self.valid_moves(pos)
        array = []
        row, col = pos

        array << [row + 1, col + 2]
        array << [row + 1, col - 2]
        array << [row - 1, col + 2]
        array << [row - 1, col - 2]
        array << [row + 2, col + 1]
        array << [row + 2, col - 1]
        array << [row - 2, col + 1]
        array << [row - 2, col - 1]

        array.select do |pos|
            row, col = pos 
            (row >= 0 && row < 8) && (col >= 0 && col < 8)
        end
    end


    def new_move_positions(pos)
        #@considered_pos.select {|pos| self.valid_moves(pos)}
    end

  


end