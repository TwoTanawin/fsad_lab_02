class CheckNum
  attr_accessor :numbers, :positive_num, :negative_num, :odd_num, :even_num
  def initialize(numbers)
    @numbers = numbers
    @positive_num = []
    @negative_num = []
    @odd_num = []
    @even_num = []
  end
  def num_categorize
    for num in @numbers
      if num > 0
        positive_num.push(num)
      elsif num < 0
        negative_num.push(num)
      end

      if num % 2 != 0
        odd_num.push(num)
      elsif num % 2 == 0
        even_num.push(num)
      end
    end
  end
  def show_categories
    puts "Positive Numbers: #{@positive_num}"
    puts "Negative Numbers: #{@negative_num}"
    puts "Odd Numbers: #{@odd_num}"
    puts "Even Numbers: #{@even_num}"
  end
end
def get_numbers(n)
  numbers = []
  for i in 1..n
    puts "Input numbers #{i} : "
    inputNumber = gets.chomp.to_i
    numbers.push(inputNumber)
    i += 1
  end
  puts "#{numbers}"

  return numbers  
end
# myNumber = [10, -3, 5, -8, 2, -15, 6]
myNumber = get_numbers(10)
checkNumber = CheckNum.new(myNumber)
checkNumber.num_categorize
checkNumber.show_categories

