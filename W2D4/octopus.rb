def sluggish(array)
  i = 0
  longest = ""
  while i < array.length - 1
    j = i + 1
    while j < array.length
      if array[j].length > array[i].length && array[j].length > longest.length
        longest = array[j]
      end
      j += 1
    end
    i += 1
  end
  longest
end

def dominant(array)
  return array.first if array.length == 1

  pivot = array[0]
  right = array.select{|fish| pivot.length < fish.length}

  dominant(right)
end

def clever(array)
  array.reduce do |biggest, fish|
    fish.length > biggest.length ? biggest = fish : biggest
  end
end

def slow_dance(dir, tiles)
  tiles.each_with_index do |el, idx|
    return idx if el == dir
  end
end

DIR_HASH = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "down-left" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(dir, dir_hash)
  DIR_HASH[dir]
end
