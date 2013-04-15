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

  it "should return 5 for V" do
    result_for('V').must_equal 5
  end

  it "should return 6 for VI" do
    result_for('VI').must_equal 6
  end

  it "should return 7 for VII" do
    result_for('VII').must_equal 7
  end

  it "should return 8 for VIII" do
    result_for('VIII').must_equal 8
  end
end
