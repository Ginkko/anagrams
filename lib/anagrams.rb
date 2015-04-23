class String
  define_method(:anagrams) do |words_to_compare|

    final_anagram_words = []

    master_word_letters = self.split("")
    words_to_compare_array = words_to_compare.split(" ")

    words_to_compare_array.each() do |word|
      word_to_compare_letters = word.split("")

      if master_word_letters.sort().eql?(word_to_compare_letters.sort())
        final_anagram_words.push(word)
      end
    end

    if final_anagram_words.empty?()
      "No anagrams found."
    else
      final_anagram_words.join(" ")
    end

  end
end
