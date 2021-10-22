class PolyTreeNode
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
        if !node.nil? && !node.parent.nil?
            node.children << self if !node.children.include?(self)
            node.parent.children.pop(node)
        end
        @parent = node
    end
end