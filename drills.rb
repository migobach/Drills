require 'pry'

# palindrom 
def palin(str) 
  sentence = str.downcase.gsub(" ","").split("")
  if sentence.reverse == sentence 
    puts "You have a plaindrome!"
  else
    puts "Sorry, not a palindrome"
  end
end
puts palin("racecar")

# string in alpha order
def alpha_order(str)
  sentence = str.downcase.gsub(" ","").split("")
  final = sentence.sort
end
puts alpha_order("Put this in alpha order")

# convert first letter to capital
def capital(str)
  sentence = str.split(" ").map(&:capitalize).join(" ")
end
puts capital("let's capitalize the first letter of each word")

# count the longest word
def longest(str)
  arr = []
  words = str.split(" ")
  words.each do |l|
    arr << l.length
  end
  longestValue = arr.index(arr.max)
  puts words[longestValue]
end
puts longest("Which word is the longest one?")

# Count vowels in a string
def countVowel(str)
  output = str.count"/[^aeiouAEIOU]/"
  puts "Your sentence has #{output} vowels"
end
puts countVowel("How many vowels are there in this string?")
