class Array
  define_method(:anagram) do |base_word|
    matches = []

    # Split base_word into an array of letters and sort alphabetically.
    base_array = base_word.split(//).sort()

    self.each() do |current_word|

      # Split current_word into an array of letters and sort alphabetically.
      test_array = current_word.split(//).sort()

      dup_base = base_array.dup # Duplicate array for testing partial matches
      is_match = false # used for testing partial matches

      #check for exact matches
      if test_array.eql?(base_array)
        matches.push(current_word)

      else #determine if partial match
        test_array.each() do |current_letter|

          if dup_base.include?(current_letter)
            is_match = true
            # Remove current letter from temp base word array to prevent incorrect multiple matches
            dup_base.delete_at(dup_base.index(current_letter))
            # keep going onto next letter
          else # Fails
            is_match = false
            break #breaks out of looping thru letters of this word for partial match because false
          end

        end #ends current letter, moves onto next letter

        if is_match # Passes
          matches.push(current_word)
        end
      end #end if


    end #end .each current word loop

    matches

  end
end

#["at"].anagram("cat")
