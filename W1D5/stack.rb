class Stack
  def initialize(arr=Array.new)
    # create ivar to store stack here!
    @stack = arr
  end

  def [](el)
    @stack[el]
  end

  def push(el)
    # adds an element to the stack
    @stack << el
  end

  def pop
    # removes one element from the stack
    @stack = @stack[0..-2]
    @stack[-1]
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack[-1]
  end
end
