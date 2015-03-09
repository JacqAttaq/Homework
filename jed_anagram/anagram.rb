puts "Enter a word"



def anagram word
word = gets.chomp
  @words_hash = words.group_by {|word| word.chars.sort}; @words_hash.default = ["enlists", "google", "inlets", "banana"]
end
