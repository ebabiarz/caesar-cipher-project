
def caesar_cipher(string, shift_factor)
  char_array = string.bytes
  encoded_string = Array.new(0)
  char_array.map do |letter|
    if (letter >= 97) && (letter <= 122)
      letter += shift_factor
      if letter > 122
        letter -= 26
      end
      encoded_string.push(letter)
    elsif (letter >= 65) && (letter <= 90)
      letter += shift_factor
      if letter > 90
        letter -= 26
      end
      encoded_string.push(letter)
    else
      encoded_string.push(letter)
    end
  end
  encoded_string.pack('c*')
end

def get_number
  puts "Please enter a number between 0 and 26"
  gets.chomp.to_i
end

def run_cipher
  puts "Please enter a sentence."
  sentence = gets.chomp
  number = get_number
  until number.between?(0, 26)
    puts "Your number wasn't between 0 and 26."
    number = get_number
  end
  puts caesar_cipher(sentence, number)
end

run_cipher