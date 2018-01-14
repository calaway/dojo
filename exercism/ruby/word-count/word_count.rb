class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase_without_quotes = phrase.gsub(/'\w+'/) do |match|
      match[1..-2]
    end
    phrase_without_quotes.split(/[^\w\d']+/).each_with_object(Hash.new(0)) do |word, counts|
      counts[word.downcase] += 1
    end
  end
end

module BookKeeping
  VERSION = 1
end
