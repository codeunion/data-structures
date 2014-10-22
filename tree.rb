def Tree(value)
  case value
  when Tree
    value
  else
    Tree.new(value)
  end
end

# Implement a generic tree class.  Each node
# is also a Tree and can have any number of children.
class Tree
  attr_reader :value, :children
  def initialize(value)
    @value    = value
    @children = []
  end

  # Add a new child to this node
  # O(1) time
  def append_child(value)
    @children.push(Tree(value))
  end

  def each(&block)
  end
end
