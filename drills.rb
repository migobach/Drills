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

# take a number and put it into coins
def toCoins(number)
  coin = []

  quarters = (number/25).to_i
  coin << quarters
  number = number - (quarters * 25)
  
  dimes = (number/10).to_i
  coin << dimes
  number = number - (dimes * 10)

  nickels = (number/5).to_i
  coin << nickels
  number = number - (nickels * 5)

  coin << number

  puts coin 
  binding.pry
end
puts toCoins(96)

# extract uniq characters
def characters(str)
  arr = str.split("").uniq
  puts arr.length
end
puts characters("how many unique characters are in this phrase?")

# count number of occurences with each letter
def countLetter(str)
  hsh = Hash.new 0
  new = str.gsub(" ","").split("").sort
  new.each do |x| hsh[x] += 1
  end
end
countLetter("how many mulitple letters are there here?")