# 1. 
# Write a ruby method that returns the smallest of three floating point numbers
def smallest(num1, num2, num3)
    s = num1
    if num2 < s
        s = num2
    end
    if num3 < s
        s = num3
    end
    return s
end
# 2.
# Write a ruby method that takes an integer and returns the number with its digits reversed.
# For example, given the number 7631, the function should return 1367
def reverse(num)
    return num.to_s.reverse
end

# puts "The smallest of 5.1, 2.1 and 8.3 is #{smallest(5.1, 2.1, 8.3)}"
# puts "The reverse of 7631 is #{reverse(7631)}"

# 3.
# The greatest common divisor (GCD) of two integers is the largest integer that evenly divides each of the numbers.
# Write a method gcd that returns the greatest common divisor of two integers.

def gcd(num1, num2)
    x = num1.abs
    y = num2.abs
    puts "X = #{x}, Y = #{y}"
    loop do
        r = x % y
        x = y
        y = r
        puts "X = #{x}, Y = #{y}"
        if y == 0
            break
        end
    end
    return x
end

puts gcd(3, 9)