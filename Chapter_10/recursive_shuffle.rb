words = ["apple", "book", "cat", "dog", "what"]

def shuffle(list)
  recursive_shuffle(list, [])
end

def recursive_shuffle(list, shuffled_list)
  x = rand(list.length)
  shuffled_list << list[x]
  list.delete_at(x)
  while list.length > 0
    recursive_shuffle(list, shuffled_list)
  end
  shuffled_list
end

puts shuffle(words)
