class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text
  end


  def pigger(word)
    vowels = 'aeiouAEIOU'
    new_word = word.downcase

    case pig
    when vowels.include(word[0])
      word + 'way'
    when new_word[0, 2] == "ch"
      new_word.slice!(2..-1) + new_word[0,2] + 'ay'
    when new_word[0, 2] == "sh"
      new_word.slice!(2..-1) + new_word[0,2] + 'ay'
    when new_word[0, 2] == "th"
      new_word.slice!(2..-1) + new_word[0,2] + 'ay'
    when new_word[0, 2] == "st"
      new_word.slice!(2..-1) + new_word[0,2] + 'ay'
    when new_word[0, 2] == "cr"
      new_word.slice!(2..-1) + new_word[0,2] + 'ay'
    when new_word[0, 2] == "gl"
      new_word.slice!(2..-1) + new_word[0,2] + 'ay'
    else
      word.slice!(1..-1) + word[0] + "ay"
  end

  def piglatinizer(text)
    arr = text.split(' ')

    arr.each do |word|
      pigger(word)
    end
  end

end
