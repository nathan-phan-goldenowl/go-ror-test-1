# ƒ(10, [3, 4, 5, 6, 7]) -> [(4, 6), (3, 7)]
# hash = {7:0, 6:1, 5:2, 4:3, 3:4}

# ƒ(8, [3, 4, 5, 4, 4]) -> [(3, 5)]
# hash = { 5:0, 4:1, 3:2, 4:3, 4:4 }

def f(sum, list)
  half_pair_hash = {}
  res = []

  list.each_with_index do |element, index|
    res << [list[half_pair_hash[element]], element] if half_pair_hash[element]

    if element != sum / 2
      half_pair_hash[sum - element] ||= index
    end
  end

  res
end
