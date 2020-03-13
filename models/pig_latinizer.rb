class PigLatinizer

  binding.pry
  def piglatinize(phrase)
    ay = "ay"
    way = "way"
    pig_array = phrase.split.map do |word|
      if word[0].match(/[aeiouyAEIOUY]/)
        new_word = word + way
        new_word
      else
        initial_consonants = word.slice!(/^([^aeiouy]+)/)
        new_word = word + initial_consonants + ay
        new_word
      end
    end
    pig_array.join(" ")
  end

end
