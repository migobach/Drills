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

# prime number checker
def prime
  puts "Enter a number to see if it is prime"
  input = gets.strip.to_i
  answer = 0
  (2...input).each { |i| input % i == 0 ? break : answer = 1 }
  if answer == 1 
    puts "It is a prime number"
  else
    puts "Not a prime number"
  end
end
prime 

# array second highest and lowest
arr = [12,23,34,54,65,98,78,56,45]

def highLow(arr)
  sorted = arr.sort
  puts "Second highest is #{sorted[-2]}, the second lowest is #{sorted[1]}"
end
highLow(arr)

#factorial
def factorIt(num)
  factors = []
  (1..num).each { |i| num % i == 0 ? factors << i : factors } 
  puts factors.join(", ")
end
factorIt(12)