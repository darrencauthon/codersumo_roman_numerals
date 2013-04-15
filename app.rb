module RomanNumeral
  def self.convert_to_int input
    result = 0
    if input.include? 'XL'
      result += 40
    elsif input.include? 'X'
      result += 10 * input.split('').select { |x| x == 'X' }.count
    end
    if input.include? 'V'
      result += 5
    end
    result += count_it input, 'I'
    result
  end

  def self.count_it input, letter
    return 0 unless input.include? 'I'
    if input.include? 'I'
      if input[-1] == 'I'
        input.split('').select { |x| x == 'I' }.count
      else
        -1
      end
    end
  end
end
