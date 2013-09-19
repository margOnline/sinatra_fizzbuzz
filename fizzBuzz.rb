class FizzBuzz
  def fizzit(number)
    return 'Come on... are you serious!' unless number > 0
    return 'FizzBuzz' if is_divisible_by_fifteen? number
    return 'Fizz' if is_divisible_by_three? number
    return 'Buzz' if is_divisible_by_five? number
    number
  end

  def is_divisible_by_three?(number)
    divisible_by? number, 3
  end

  def is_divisible_by_five?(number)
    divisible_by? number, 5
  end

  def is_divisible_by_fifteen?(number)
    divisible_by? number, 15
  end

  private

  def divisible_by?(number, divisor)
    number % divisor == 0
  end
end