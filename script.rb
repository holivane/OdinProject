# frozen_string_literal: true

require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split('')

  unique_length = string_array.uniq.length
  original_length == unique_length
end

answere = isogram?('Odin')
puts answere
