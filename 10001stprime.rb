# I'm not a developer, but this seemed like a lot of fun to try.
# (Not to mention, a chance to start digging into Ruby!)
puts 'This program finds the (n)th prime number.'
puts 'Enter a positive integer (n):'
entered = gets.chomp.to_i
# Could add logic to test that a positive whole number was indeed entered

def is_prime number #I wanted to calculate prime from scracth, and not use a pre-existing method
  divisor_count = 0
	divisors = (1..(number**0.5)).to_a
	return false if number < 2
	divisors.each do |num|
		divisor_count += 1 if number%num == 0
	end
	return true if divisor_count == 1
	false
end

def nth_prime number
	nth_count = 0
	test_number = 1
	while number != nth_count
		test_number += 1
		nth_count += 1 if is_prime(test_number) == true
	end
	puts 'The ' + number.to_s + '(n)th prime number is ' + test_number.to_s + '.'
end
# This program took a while to run.
# I would guess once I dive deeper into Ruby, there are ways to simplify the code.
puts nth_prime(entered)
