<<<<<<< HEAD
# frozen_string_literal: true

def caesar_cipher(str, shift)
  code = str.chars.map do |char|
    base = calculate_base(char)
    base.is_a?(Integer) ? ((char.ord + shift - base) % 26 + base).chr : base
  end.join
  puts code
end

def calculate_base(char)
  if ('A'..'Z').include?(char)
    'A'.ord
  elsif ('a'..'z').include?(char)
    'a'.ord
  else
    char
  end
end

caesar_cipher('What a string!', 1)
=======
def caesar_cipher(str, shift)
    code = ""
    str.each_char do |char|
      if ('A'..'Z').include?(char)
        char_shift = ((char.ord + shift - 'A'.ord) % 26 + 'A'.ord).chr
      elsif ('a'..'z').include?(char)
        char_shift = ((char.ord + shift - 'a'.ord) % 26 + 'a'.ord).chr
      else
        char_shift = char
      end
      code << char_shift
    end
    puts code
  end
  
  caesar_cipher("What a string!", 5)
>>>>>>> 33249f1 (Método para modificar string)
