def frequencies(sentence)
# transformer string en array
# transformer array en hash
# verifier si mot = key existante
# => compter la frequence des mots
  words = transform(sentence)
  hash_frequencies = {}

  words.each do |word|
    if hash_frequencies.key? word
      hash_frequencies[word] += 1
    else
      hash_frequencies[word] = 1
    end
  end
  return filter(hash_frequencies)
end

USELESS_WORDS = ["have", "with", "this", "the", "and", "our", "are", "for"]

def filter(hash_of_frequencies)
  hash_of_frequencies.each do |word, frequence|
    if USELESS_WORDS.include?(word) || word.length < 3 || frequence < 3
      hash_of_frequencies.delete(word)
    end
  end
  hash_of_frequencies
end

def transform(string)
  string.split.map do |word|
    word.downcase.gsub(/[!?.,;]/, "")
  end
end
