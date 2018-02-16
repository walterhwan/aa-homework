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
  def initialize
    @ivar = []
  end

  def remove(key)
    @ivar = @ivar.reject do |(k, _)|
      k == key
    end
  end

  def lookup(key)
    @ivar.each do |(k, v)|
      return v if k == key
    end

    nil
  end

  def assign(key, value)
    @ivar << [key, value]
  end

end

m = Map.new
m.assign('a', 1)
m.assign('b', 2)
m.assign('c', 3)

p m.lookup('c')
m.remove('b')
m.remove('a')
m.remove('c')

p m
