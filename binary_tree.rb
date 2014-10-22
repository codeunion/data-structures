# Implement a basic (recursive) Binary Tree

def BinaryTree(value)
  case value
  when BinaryTree
    value
  else
    BinaryTree.new(value)
  end
end

# For traversal, see
# http://en.wikipedia.org/wiki/Tree_traversal#Implementations

class BinaryTree
  attr_accessor :value, :left, :right

  def initialize(value = nil)
  end

  def each(&block)
  end

  # Implement pre-order traversal of the tree
  def pre_order(&block)
  end

  # Implement in-order traversal of the tree
  def in_order(&block)
  end

  # Implement post-order traversal of the tree
  def post_order(&block)
  end
end
