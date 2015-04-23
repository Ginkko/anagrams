class String
  define_method(:anagrams) do |word_to_compare|

    master_word_letters = self.split("")
    word_to_compare_letters = word_to_compare.split("")

    if master_word_letters.sort().eql?(word_to_compare_letters.sort())
      word_to_compare_letters.join()
    else
      "No anagrams found."
    end

  end
end
