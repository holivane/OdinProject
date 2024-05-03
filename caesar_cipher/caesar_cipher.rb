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