require_relative "../stack"

describe Stack do
  describe ".new" do
    it "returns an instance of Stack" do
      expect(Stack.new).to be_a(Stack)
    end
  end

  describe "#push" do
    it "returns the original stack" do
      stack = Stack.new

      expect(stack.push("waffles")).to eq(stack)
    end

    it "makes the stack non-empty" do
      stack = Stack.new

      expect {
        stack.push("waffles")
      }.to change(stack, :empty?).from(true).to(false)
    end

    it "increases the size of the stack by 1" do
      stack = Stack.new

      expect {
        stack.push("waffles")
      }.to change(stack, :size).by(1)
    end
  end

  describe "#pop" do
    it "returns and removes the item most recently added to the stack" do
      stack = Stack.new
      stack.push("waffles")
      stack.push("giraffe")

      expect(stack.pop).to eq("giraffe")
      expect(stack.pop).to eq("waffles")
    end

    it "decreases the size of the stack by 1" do
      stack = Stack.new
      stack.push("waffles")

      expect {
        stack.pop
      }.to change(stack, :size).by(-1)
    end

    it "raises an UnderflowError when stack is empty" do
      stack = Stack.new

      expect {
        stack.pop
      }.to raise_error(Stack::UnderflowError)
    end
  end

  describe "#peek" do
    it "returns nil when the stack is empty" do
      stack = Stack.new

      expect(stack.peek).to be_nil
    end

    it "returns but doesn't remove the item most recently added to the stack" do
      stack = Stack.new
      stack.push("waffles")
      stack.push("giraffe")

      expect(stack.peek).to eq("giraffe")
      expect(stack.peek).to eq("giraffe")
    end

    it "does not change the size of the stack" do
      stack = Stack.new
      stack.push("waffles")

      expect {
        stack.peek
      }.not_to change(stack, :size)
    end
  end

  describe "#size" do
    it "returns 0 for an empty stack" do
      stack = Stack.new

      expect(stack.size).to eq(0)
    end

    it "returns the number of items on the stack" do
      stack = Stack.new
      3.times { stack.push("waffles") }
      4.times { stack.push("giraffe") }

      expect(stack.size).to eq(7)
    end
  end
end
