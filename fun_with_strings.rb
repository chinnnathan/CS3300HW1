module FunWithStrings
  def palindrome?
    self_forwards = self.downcase.gsub(/[^a-z]/i, '')
    self_backwards = self.downcase.reverse.gsub(/[^a-z]/i, '')
    return self_forwards.eql?(self_backwards)
  end
  def count_words
    words = self.downcase.gsub(/[^a-z ]/i, '').split
    @word_count = Hash.new
    for word in words
       if(@word_count.key?(word))
           count = @word_count[word] + 1
           @word_count[word] = count
       else
           @word_count.store(word, 1)
       end
    end
    return @word_count
  end
  def anagram_groups
    array = self.split(" ").map{|word| word.to_s}
    return array.group_by {|word| word.downcase.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

