# No.1
num = rand(1..15)
if num > 10
  puts "large"
elsif num == 10
  puts "eq"
else
  puts "small"
end

# No.2
a = 3
b = 5
if a < b
  puts a
else
  puts b
end

# No.3
a = 3
b = 5
a, b = b, a
puts a
puts b

# No.4
0.upto(9) do |i|
  puts i
end

# No.5
def pyramid(n)
  1.upto(n) do |i|
    puts "*" * i
  end
end


# No.6
a = 1
b = 2
c = 3
array = [a, b, c]

# No.7
array.each do |value|
  puts value
end

# No.8
array = [1, 2, 3, 4, 5]
num = 6
unless array.include?(num)
  array << num
end
p array


# No.9
array1 = [1 ,2 ,3 ,4 ,5]
def plus(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum
end
puts plus(array1)

# No.10
array1 = [1, 2, 3, 4, 5]
def average(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum / array.length
end
puts average(array1)

# No.11
def total(array)
  sum = 0
  return_array = []
  array.each do |num|
    sum += num
    return_array << num
    if sum > 15
      break
    end
  end
  return_array
end


# No.12
hash = {:key1 => 1, :key2 => 2, :key => 3}

# No.13
hash[:key2]

# No.14
hash[:key4] = 4

# No.15
hash.each do |key, value|
  puts "#{key} is #{value} "
end

# No.16
hash.each_value do |value|
  value *= 2
  puts value
end


# No.17
1.upto(100) do |i|
  if i % 3 == 0 && i % 5 == 0
    puts "FizzBuzz"
  elsif i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts "Buzz"
  else
    puts i
  end
end

# No.18
a1 = [1, 2, 3]
a2 = a1.map { |n| n * 3}
#　mapを使って記述

# No.19
def inc(array, num)
  array.include?(num)
end

# No.20
# jimaede
def minimum(array)
  number = array[0]
  array.each do |num|
    if number > num
      number = num
    end
  end
  number
end

# No.21
def duplicate?(array)
  array.size != array.uniq.size
end

# No.22
def duplicate_number_ascender(array)
  array.select{|a| array.count(a) > 1}.uniq.sort
end

# No.23
def duplicate_number_hash(array)
  array1 = array.select{|a| array.count(a) > 1}.sort
  k = Hash.new(0)
  array1.each do |num|
    k[num] = array1.count(num)
  end
  k 
end
# 修正版
def duplicate_number_ascender(array)
  array.reject { |a| array.index(a) == array.rindex(a) }.each_with_object(Hash.new(0)) { |a, h| h[a] += 1;}
end
