class LRUCache
  def initialize(size)
    @size = size
    @store = []
  end

  def add(el)
    if store.include?(el)
      store.delete(el)
    elsif count >= 4
      store.shift
    end
    store.push(el)

    self
  end

  def count
    store.count
  end

  def show
    store.dup
  end

  private

  attr_accessor :store
end

if $PROGRAM_NAME == __FILE__
  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2 [str, 5]

  johnny_cache.add([1,2,3]) # [str, 5, [1, 2, 3]]
  johnny_cache.add(5) # []
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
end
