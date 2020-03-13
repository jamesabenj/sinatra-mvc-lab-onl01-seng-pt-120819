class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def split_phrase
    self.text.split
  end

  def pig_latin
    vowels = ["a","e","i","o","u","y"]
    ay = "ay"
    way = "way"
    pig_array = split_phrase.map do |word|
      if vowels.include?(word[0])
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
