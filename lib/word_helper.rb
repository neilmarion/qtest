module WordHelper
  def self.tally(some_string)
    words = some_string.split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase.to_sym] += 1 }
    return frequency
  end

  def self.filter(phrase, black_list)
    black_list.split.each {|replacement|
      phrase.gsub!(/(#{replacement})/i, '*' * replacement.length)
    }
    phrase
  end

  def self.link_to_users(phrase, black_list)
    phrase.gsub!(/[@]\w+/) do |match|
      "<a href='http://github.com/#{match.gsub('@','')}'>#{match}</a>"
    end
  end
end
