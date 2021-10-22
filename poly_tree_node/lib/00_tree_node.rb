require "byebug"

class PolyTreeNode

    attr_accessor :parent, :children, :value

    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def value
        @value
    end

    def parent=(node) 
        if !node.nil?
            node.children << self if !node.children.include?(self)
            # debugger
            node.parent.children.delete(self) if !node.parent.nil?
        end
        @parent = node
    end

    def add_child(node)
        node.parent = self
        children << node if !children.include?(node)
    end

    def remove_child(node)
        if !self.children.include?(node)
            raise Exception.new("Node is not a child")
        end
        node.parent = nil
        children.delete(node)
    end

    def dfs(target_value)
        return self if value == target_value
        children.each do |child|
            val = child.dfs(target_value)
            return val if !val.nil?
        end
        nil
    end



end