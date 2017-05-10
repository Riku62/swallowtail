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
n = 10
for i in 1..n
  puts "#" * i
end

# No.6
array = ["a" => 1, "b" => 2, "c" => 3]

# No.7
array.each do |value|
  puts value
end

# No.8
array = [1, 2, 3, 4, 5]
num = 6
if !(array.include?(num))
  array.push(num)
end
p array


# No.9
array1 = [1,2,3,4,5]
def plus(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  p sum
end
plus(array1)

# No.10
array1 = [1,2,3,4,5]
def average(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  p sum / array.length
end
average(array1)

# No.11
def total(array)
  sum = 0
  array1 = []
  array.each do |num|
    sum += num
    array1.push(num)
    if sum > 15
      break
    end
  end
  p array1
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
for i in 1..100
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
a2 = []
a1.each do |num|
  a2.push(num * 2)
end

# No.19
def inc(array, num)
  if array.include?(num)
    return true
  else
    return false
  end
end

# No.20
def minimum(array)
  array.min
end

# No.21
def duplication(array)
  if array.size == array.uniq.size
    return false
  else
    return true
  end
end

# No.22
def duplicate_ascender(array)
  array.select{|a| array.count(a) > 1}.uniq.sort
end

# No.23
def duplicate_hash(array)
  array1 = array.select{|a| array.count(a) > 2}.sort
  p array1
  k = Hash.new(0)
  array1.each do |num|
    k[num] = array1.count(num)
  end
  puts k
end
