class LinkedList
  # By implementing LinkedList#each, we can include Enumerable
  include Enumerable

  attr_reader :head

  def initialize
    @head = Node.new(nil)
  end

  # O(1) time
  def unshift(value)
    @head = @head.insert_before(value)

    self
  end

  # O(1) time
  def shift
    result = @head.value
    @head = Node(@head.next)
    result
  end

  # O(1) time
  def empty?
    self.head.empty?
  end

  def each(&block)
    node = self.head

    until node.empty?
      block.call(node.value)
      node = node.next
    end

    self
  end

end

# This allows us to call Node(value) and is different
# than the class "Node".  This is how Ruby methods
# like Integer(value), Array(value), String(value), etc.
# work.
def Node(value)
  case value
  when Node
    value
  else
    Node.new(value)
  end
end

class Node
  include Enumerable

  attr_accessor :value, :next

  def initialize(value = nil, next_node = nil)
    @value = value
    @next  = next_node
  end

  # O(1) time
  # Insert +value+ before this Node and return new Node
  def insert_before(value)
    node = Node(value)
    @next = node
    node
  end

  # O(1) time
  # Insert +value+ after this Node and return new Node
  def insert_after(value)
    node = Node(value)
    node.next = self
    node
  end

  def empty?
    value.nil?
  end
end
