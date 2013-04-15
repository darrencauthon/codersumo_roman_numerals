module RomanNumeral

  def self.letters
    ['L', 'X', 'V', 'I']
  end

  def self.value_for letter
    case letter
    when 'I'
      1
    when 'V'
      5
    when 'X'
      10
    when 'L'
      50
    end
  end

  def self.convert_to_int input
    letters.reduce(0) { |t, i| t += count_it input, i }
  end

  def self.count_it input, letter
    return 0 unless input.include? letter

    string_to_use = input.clone
    letters_less_than(letter).each do |x|
      string_to_use.gsub! x, ''
    end

    if string_to_use[-1] == letter
      value_for(letter) * input.split('').select { |x| x == letter }.count
    else
      -1 * value_for(letter)
    end
  end

  def self.letters_less_than letter
    letters.select { |x| value_for(x) < value_for(letter) }
  end
end
