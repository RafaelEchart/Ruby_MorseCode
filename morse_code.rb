$morse_hash = { 
  A: ".-", 
  B: "-...", 
  C: "-.-.", 
  D: "-..",
  E: ".",
  F: "..-.",
  G: "--.",
  H: "....",
  I: "..",
  J: ".---",
  K: "-.-",
  L: ".-..",
  M: "--",
  N: "-.",
  O: "---",
  P: ".--.",
  Q: "--.-",
  R: ".-.",
  S: "...",
  T: "-",
  U: "..-",
  V: "...-",
  W: ".--",
  X: "-..-",
  Y: "-.--",
  Z: "--.."
}

def decode_char(string)
  $morse_hash.each { |key, value| 
    if value == string
      letter = key.to_s
      return letter
    end
  }
end

def decode_word(string)
  split_letters = string.split(' ')
  word = ""
  split_letters.each {|el| 
    word += decode_char(el)
  }
  return word
end

puts decode_char(".-")
puts decode_word("-- -.--")