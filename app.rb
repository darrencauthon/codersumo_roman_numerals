module RomanNumeral

  def self.value_for letter
    case letter
    when 'I'
      1
    when 'V'
      5
    when 'X'
      10
    end
  end

  def self.convert_to_int input
    result = 0
    if input.include? 'XL'
      result += 40
    elsif input.include? 'X'
      result += value_for('X') * input.split('').select { |x| x == 'X' }.count
    end
    if input.include? 'V'
      result += value_for 'V'
    end
    result += count_it input, 'I'
    result
  end

  def self.count_it input, letter
    return 0 unless input.include? 'I'
    if input.include? 'I'
      if input[-1] == 'I'
        value_for(letter) * input.split('').select { |x| x == 'I' }.count
      else
        -1 * value_for(letter)
      end
    end
  end
end
