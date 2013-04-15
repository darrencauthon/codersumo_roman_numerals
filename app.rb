module RomanNumeral
  def self.convert_to_int input
    if input.include? 'V'
      result = 5
      result -= 1 if input[0] == 'I'
      return result
    end
    input.length
  end
end
