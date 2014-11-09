words = ["book", "apple", "what", "cow"]

def sort(list)
  recursive_sort(list, unsorted = [])
  puts unsorted
end

def recursive_sort (unsorted, sorted)
  sorted << unsorted.min
  unsorted.delete(unsorted.min)
  until unsorted.empty?
    recursive_sort(unsorted, sorted)
  end
end

sort(words)
