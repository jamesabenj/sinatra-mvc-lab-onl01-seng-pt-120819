class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def split_phrase
    self.text.split
  end

  def piglatinize
    ay = "ay"
    way = "way"
    pig_array = split_phrase.map do |word|
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
