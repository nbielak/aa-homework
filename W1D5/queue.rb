
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

q = Queue.new([1,2,3,4,5])
p q.dequeue
p q
