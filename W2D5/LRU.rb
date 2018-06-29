class LRUCache
  def initialize(limit)
    @limit = limit
    @cache = []
  end

  def count
    # returns number of elements currently in cache
    @cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if self.count >= limit
      @cache.shift
      @cache << el
    elsif @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache << el
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    @cache.dup
  end

  private
  # helper methods go here!
  attr_reader :limit

end
