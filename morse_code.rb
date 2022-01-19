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
  split_letters.each {|el| decode_char(el)}
end

decode_char(".-")
decode_word("-- -.--")