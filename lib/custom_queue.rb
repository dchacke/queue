class CustomQueue
  attr_accessor :items

  def initialize
    @size = 0
    @items = []
  end

  def size
    @items.size
  end

  def enqueue(item)
    @items << item
  end

  def dequeue
    @items.shift
  end
end
