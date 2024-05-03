# frozen_string_literal: true

class CaesarCipher # rubocop:disable Style/Documentation
    def initialize(shift)
      @shift = shift
    end
  
    def cipher(str)
      str.chars.map { |char| char_shift(char) }.join('')
    end
  
    private
  
    def char_shift(char)
      base = 'A'.ord if ('A'..'Z').include?(char)
      base = 'a'.ord if ('a'..'z').include?(char)
      return char unless base
  
      ((char.ord + @shift - base) % 26 + base).chr
    end
  end
  
  phase = CaesarCipher.new(5)
  puts phase.cipher('What a string!')
  
  phase = CaesarCipher.new(2)
  puts phase.cipher('Abc dEFG!')