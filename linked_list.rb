class LinkedList
  attr_reader :head

  def initialize
    @head = Node.new(nil)
  end

  def prepend(node)
  end

  def empty?
  end

  def each(&block)
  end
end

class Node
  attr_accessor :value, :next

  def initialize(value = nil)
  end

  def empty?
    value.nil?
  end
end
