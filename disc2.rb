# CMSC330 - Organization of Programming Languages
# Luke Muratore Discussion Examples
# Discussion 2 Examples
# Best to show students code and then run it piece by piece 
# Run code on replit.com or put "ruby disc2.rb" into terminal

puts "Codeblocks package code and pass it in as a variable"

a = [1,2,3,4]

a.each { |x| puts x }

puts "\nNo need to store array in a variable, however"

[1, 2, 3, 4].each { |n| puts n }

puts "\nYield commands run code blocks that are passed in at the function call"


def test
   puts "Method code"
   yield
   puts "Method code"
   yield
end

test {puts "Block code"}

puts "\nYou also can pass parameters with the yield statement"

def test
   yield 5
   puts "Method code, with no numbers"
   yield 100
end

test {|i| puts "Block code, with number #{i}"}



puts "\nRegular Expression is used to match strings and extract information"

def reg_line(line)
  if "abc1" =~ /(\w+)(\d)/
    puts "Letters are #{$1} and number is #{$2}"
  end
end

reg_line("abc1")