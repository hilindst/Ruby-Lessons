# 3a. The script aims to define a method count_words that takes a sentence as a string and returns a hash with each word as a key and its frequency as the value. 
# The current implementation is flawed and needs debugging.
def count_words(sentence)
  words = sentence.split
  word_counts = {}
  words.each do |word|
    if word_counts.key?(word)
      word_counts[word] += 1
    else
      word_counts[word] = 1
    end
  end
  word_counts
end

# 3b. The script is intended to define a method calculate_factorial that takes an integer and returns its factorial. The current implementation is not functioning correctly.

def calculate_factorial(number)
  factorial=1
  if number <=0
      puts "Number error"
  else
  counter=1 
    while(counter <= number)
          factorial = factorial * counter 
        counter += 1
    end
  end
end

# 3c. The script is meant to define a method find_median that takes an array of numbers, sorts it, and returns the median value. The current implementation is not working correctly.

def find_median(numbers)
  sorted=numbers.sort!
  med = (sorted.length - 1) / 2
  return sorted[med]
end




