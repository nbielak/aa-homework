
class Map

  def initialize(array)
    @map = array
  end

  def set(key, value)
    @map << [key, value]
  end

  def get(key)
    @map.each do |pair|
      return pair if pair[0] == key
    end
    nil
  end

  def delete(key)
    @map.each_with_index do |pair, idx|
      if pair[0] == key
        @map = @map[0...idx] + @map[(idx + 1)..-1]
        return @map
      end
    end
    return "Not a valid key!"
  end

  def show
    @map
  end
end
