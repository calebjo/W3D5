require_relative "00_tree_node.rb"

class KnightPathFinder
    attr_reader :pos

    def initialize(pos)
        @pos = pos
        @root_node = PolyTreeNode.new(pos)
        @considered_pos = [pos]
    end

    def self.valid_moves(pos)

    end


    def new_move_positions(pos)
        @considered_pos.select {|pos| self.valid_moves(pos)}
    end

  


end