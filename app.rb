module RomanNumeral

  def self.convert_to_int input
    letters.reduce(0) { |t, i| t += count_it input, i }
  end
  
  private

  def self.letters
    letter_values.keys
  end

  def self.letter_values
    { 
      'L' => 50,
      'X' => 10,
      'V' =>  5,
      'I' =>  1
    }
  end

  def self.value_for letter
    letter_values[letter]
  end

  def self.count_it input, letter
    return 0 unless input.include? letter

    # remove all characters less than the one being evaluated
    letters_less_than(letter).each { |x| input = input.gsub(x, '') }

    if input[-1] == letter
      value_for(letter) * input.split('').select { |x| x == letter }.count
    else
      -1 * value_for(letter)
    end
  end

  def self.letters_less_than letter
    letters.select { |x| value_for(x) < value_for(letter) }
  end
end
