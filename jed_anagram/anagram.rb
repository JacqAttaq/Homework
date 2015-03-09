puts "Enter a word"

words = ["enlists", "google", "inlets", "banana"]

def anagram word
word = gets.chomp.downcase
  @words_hash = words.each_with_object(Hash.new[]) do |word,hash| 
    hash[word.chars.sort] += [word]
  end
puts words_hash
end
