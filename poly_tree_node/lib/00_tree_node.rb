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
            # node.parent.children.delete(node) if !node.parent.nil?
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


end