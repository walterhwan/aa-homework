class Stack
  def initialize
    @ivar = []
  end

  def add(el)
    @ivar << el
  end

  def remove
    @ivar.pop
  end

  def show
    self.dup
  end
end

class Queue
  def initialize
    @ivar = []
  end

  def enqueue(el)
    @ivar << el
  end

  def dequeue
    @ivar.shift
  end

  def show
    self.dup
  end
end

class Map
  
end
