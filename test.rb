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

  it "should return 9 for IX" do
    result_for('IX').must_equal 9
  end

  it "should return 10 for X" do
    result_for('X').must_equal 10
  end

  it "should return 11 for XI" do
    result_for('XI').must_equal 11
  end

  it "should return 20 for XX" do
    result_for('XX').must_equal 20
  end

  it "should return 40 for XL" do
    result_for('XL').must_equal 40
  end

  it "should return 41 for XLI" do
    result_for('XLI').must_equal 41
  end

  it "should return 44 for XLIV" do
    result_for('XLIV').must_equal 44
  end

  it "should return 80 for LXXX" do
    result_for('LXXX').must_equal 80
  end

  it "should return 90 for XC" do
    result_for('XC').must_equal 90
  end

  it "should return 300 for CCC" do
    result_for('CCC').must_equal 300
  end

  it "should return 600 for DC" do
    result_for('DC').must_equal 600
  end

  it "should return 800 for DCCC" do
    result_for('DCCC').must_equal 800
  end

  it "should return 900 for CM" do
    result_for('CM').must_equal 900
  end

  it "should return 2302 for MMCCCII" do
    result_for('MMCCCII').must_equal 2302
  end

  it "should return 4276 for MMMMCCLXXVI" do
    result_for('MMMMCCLXXVI').must_equal 4276
  end

  it "should return 1845 for MDCCCXLV" do
    result_for('MDCCCXLV').must_equal 1845
  end

  it "should return 1543 for MDXLIII" do
    result_for('MDXLIII').must_equal 1543
  end
end
