class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    phrase.scan(/\b[\w']+\b/)
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, counts|
      counts[word.downcase] += 1
    end
  end
end

module BookKeeping
  VERSION = 1
end
