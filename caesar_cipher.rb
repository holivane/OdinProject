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
