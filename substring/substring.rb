dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |word, result|
    matches = string.scan(word).length
    result[word] = matches if matches.positive?
  end
end

print (substrings("below-golow", dictionary))