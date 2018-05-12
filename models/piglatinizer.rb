class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text
  end


  def pigger(word)
    vowels = 'aeiouAEIOU'
    downed = word.downcase
    case pig
    when vowels.include(word[0])
      word + 'way'
    when word[0, 2] == "ch"

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
