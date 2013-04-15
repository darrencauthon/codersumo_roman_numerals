module RomanNumeral
  def self.convert_to_int input
    if input.include? 'X'
      result = 10
      if input[0] == 'I'
        result -= 1 
      else
        result += input.split('').select { |x| x == 'I' }.count
      end
      return result
    end
    if input.include? 'V'
      result = 5
      if input[0] == 'I'
        result -= 1 
      else
        result += input.split('').select { |x| x == 'I' }.count
      end
      return result
    end
    input.length
  end
end
