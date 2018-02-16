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
    el
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
    @map = []
  end

  def remove(key)
    @map.reject! do |(k, _)|
      k == key
    end
  end

  def lookup(key)
    @map.each do |(k, v)|
      return v if k == key
    end

    nil
  end

  def assign(key, value)
    idx = @map.index { |(k, v)| k == key }
    idx ? @map[idx][1] = value : @map << [key, value]
    [key, value]
  end

  def show
    dup_map(@map)
  end

  private

  def dup_map(arr)
    arr.map do |el|
      el.is_a?(Array) ? dup_map(el) : el
    end
  end
end
