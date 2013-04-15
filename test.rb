require_relative 'app'
require 'minitest/spec'
require 'minitest/autorun'

def result_for input
  RomanNumeral.convert_to_int(input)
end

describe RomanNumeral do
  it "should return 1 for I" do
    result_for('I').must_equal 1
  end

  it "should return 2 for II" do
    result_for('II').must_equal 2
  end

  it "should return 3 for III" do
    result_for('III').must_equal 3
  end

  it "should return 4 for IV" do
    result_for('IV').must_equal 4
  end
end
