class Array
  define_method(:anagram) do |base_word|
    matches = []

    split_base_word_array = base_word.split(//) #creating an array
    sorted_base_word_array = split_base_word_array.sort()

    self.each() do |current_word|

      split_test_word_array = current_word.split(//)
      sorted_test_word_array = split_test_word_array.sort()

      if sorted_test_word_array.eql?(sorted_base_word_array)
        matches.push(current_word)
      end

    end

    matches

  end
end
