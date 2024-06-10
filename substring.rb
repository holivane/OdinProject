# frozen_string_literal: true

# > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# > substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |word, result|
    matches = string.scan(word).length
    result[word] = matches if matches.positive?
  end
end

print(substrings('below-golow', dictionary))
