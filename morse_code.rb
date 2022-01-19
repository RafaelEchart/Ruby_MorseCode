def morse_hash
  { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.', H: '....',
    I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.',
    Q: '--.-', R: '.-.', S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-', Y: '-.--', Z: '--..' }
end

def decode_char(string)
  morse_hash.each do |key, value|
    if value == string
      letter = key.to_s
      return letter
    end
  end
end

def decode_word(string)
  split_letters = string.split
  word = ''
  split_letters.each do |el|
    word += decode_char(el)
  end
  word
end

def decode_sentense(string)
  new_string = string.gsub('/', ' ')
  split_word = new_string.split('   ')
  sentense = ''
  split_word.each do |word|
    sentense += "#{decode_word(word)} "
  end
  sentense
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_sentense('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
