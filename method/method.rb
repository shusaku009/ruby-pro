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

