
class Queue

  def initialize(array)
    @queue = array
  end

  def enqueue(el)
    @queue = [el] + @queue
  end

  def dequeue
    @queue = @queue[0..-2]
    @queue[-1]
  end

  def peek
    @queue[-1]
  end
end
