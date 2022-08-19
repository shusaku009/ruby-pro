numbers = [1,2,3,4]
numbers.sum

numbers = [1,2,3,4]
numbers.sum{ |n| n * 2 }

numbers = [1,2,3,4]
numbers.sum(5)

chars = ['a','b','c']
chars.sum('')

chars = ['a','b','c']
chars.join

chars = ['a','b','c']
chars.join('-')

data = ['a',2, 'b', 4]
data.join

['ruby', 'java', 'python'].map { |s| s.upcase }

['ruby', 'java', 'python'].map(&:upcase)

range = 1..5
range.include?(0)
range.include?(1)
range.include?(4.9)
range.include?(5)
range.include?(6)

range = 1...5
range.include?(0)
range.include?(1)
range.include?(4.9)
range.include?(5)
range.include?(6)

a = [1,2,3,4,5]

def liquid?(temperature)
  0 <= temperature && temperature < 100
end
liquid?(-1)
liquid?(0)
liquid?(99)
liquid?(100)

def liquid?(temperature)
  (0...100).include?(temperature)
end
liquid?(-1)
liquid?(0)
liquid?(99)
liquid?(100)


def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

charge(3)

charge(12)

charge(16)

charge(25)

(1..5).to_a

(1...5).to_a

('a'..'e').to_a

numbers = (1..4).to_a

def greet(*names)
  "#{names.join('と')},こんにちは！"
end
greet('田中さん')
greet('田中さん','鈴木さん')
greet('田中さん','鈴木さん','佐藤さん')

def foo(a, *b, c, d)
  puts = "a = #{a}, b = #{b}, c = #{c}, d = #{d}"
end

foo(1,2,3,4,5,6)

a = [1,2,3]

[a]

[*a]

a, *b, c, d = 1,2,3,4,5

fruits = ['apple', 'orange', 'melon']

fruits.each_with_index { |fruit, i| puts "#{i}:#{fruit}"}

fruits = ['apple', 'orange', 'melon']

fruits.map.with_index { |fruit,i| "#{i}: #{fruit}" }

fruits = ['apple', 'orange', 'melon']

fruits.delete_if.with_index { |fruit,i| fruit.include?('a')&& i.odd? }

fruits = ['apple', 'orange', 'melon']

p fruits.each
p fruits.map
p fruits.delete_if

fruits = ['apple', 'orange','melon']

fruits.each.with_index(1) { |fruit,i| puts "#{i}: #{fruit}"}

dimensions = [
  [10,20],
   [30,40],
   [50,60],
]

areas = []

dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end
areas

dimensions.each do |length,width|
  areas << length * width
end
areas

dimensions.each do |length,width,foo,bar|
  p [length,width,foo,bar]
end

dimensions = [
  [10,20,100],
   [30,40,200],
   [50,60,300],
]

dimensions.each do | length, width|
  p [length,width]
end


# dimensions.each do | length, width i|
#   puts "length: #{length}, width: #{width}, i: #{i}"
# end


dimensions = [
  [10,20],
   [30,40],
   [50,60],
]
dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end


dimensions = [
  [10,20],
   [30,40],
   [50,60],
]
dimensions.each_with_index do |dimension,i|
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end

dimensions = [
  [10,20],
   [30,40],
   [50,60],
]
dimensions.each_with_index do |(length,width),i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

dimension,i = [[10,20],0]
dimension
i

(length,width), i = [[10,20],0]
length
width
i

['1','20','300'].map { |s| s.rjust(3,'0') }

['1','20','300'].map { _1.rjust(3,'0') }


numbers = [1,2,3,4]
sum = 0
numbers.each do |n; sum|
  sum = 10
  sum += n
  puts sum
end

File.open('./sample.txt','w') do |file|
  file.puts ('1行目のテキストです')
  file.puts ('2行目のテキストです')
  file.puts ('3行目のテキストです')
end