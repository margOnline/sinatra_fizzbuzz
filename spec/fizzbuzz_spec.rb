
require_relative '../fizzBuzz'

describe 'FizzBuzz' do
  let(:fizzbuzz) { FizzBuzz.new }

  it 'is divisible by three' do
    expect(fizzbuzz.is_divisible_by_three?(3)).to be_true
  end

  it 'is not divisible by three' do
    expect(fizzbuzz.is_divisible_by_three?(2)).to be_false
  end

  it 'is divisible by five' do
    expect(fizzbuzz.is_divisible_by_five?(10)).to be_true
  end

  it 'is not divisible by five' do
    expect(fizzbuzz.is_divisible_by_five?(4)).to be_false
  end

  it 'is divisible by 15' do
    expect(fizzbuzz.is_divisible_by_fifteen?(15)).to be_true
  end

  it 'is not divisible by 15' do
    expect(fizzbuzz.is_divisible_by_fifteen?(2)).to be_false
  end

  it 'shows the number' do
    expect(fizzbuzz.fizzit(1)).to eq 1
  end

  it 'shows Fizz when the number is divisible by 3' do
    expect(fizzbuzz.fizzit(3)).to eq 'Fizz'
  end

  it 'shows Buzz when the number is divisible by 5' do
    expect(fizzbuzz.fizzit(5)).to eq 'Buzz'
  end

  it 'shows FizzBuzz when the number is divisible by 15' do
    expect(fizzbuzz.fizzit(15)).to eq 'FizzBuzz'
  end

  #the result of this statement will be printed during the test
  it 'shows the whole thing although this is not a test' do
    1.upto(100) { |number| puts fizzbuzz.fizzit(number) }
  end
end