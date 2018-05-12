class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text
  end


  def pigger(word)
    vowels = 'aeiouAEIOU'

    case pig
    when vowels.include(word[0])
      word.slice(0) + "w" + word[0]
  end
   
  def piglatinizer(text)
    arr = text.split(' ')

    arr.each do |word|
      pigger(word)
    end 
  end 

end
