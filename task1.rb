
def factorial(num)
  fact = 1
  for i in 1..num
    fact *= i
  end

  return fact
end

n = 5

fct = factorial(n)

puts "The factorail of #{n} is #{fct}"

