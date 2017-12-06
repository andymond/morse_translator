

class Translate

  attr_reader :word

  def initialize
    @word
  end

  def eng_to_morse(word)
    english = word.split("")
    #vV make this into an object tho
    morse_dictionary = {
  	"a" => ".-",
  	"b" => "-...",
  	"c" => "-.-.",
  	"d" => "-..",
  	"e" => ".",
  	"f" => "..-.",
  	"g" => "--.",
  	"h" => "....",
  	"i" => "..",
  	"j" => ".---",
  	"k" => "-.-",
  	"l" => ".-..",
  	"m" => "--",
  	"n" => "-.",
  	"o" => "---",
  	"p" => ".--.",
  	"q" => "--.-",
  	"r" => ".-.",
  	"s" => "...",
  	"t" => "-",
  	"u" => "..-",
  	"v" => "...-",
  	"w" => ".--",
  	"x" => "-..-",
  	"y" => "-.--",
  	"z" => "--..",
  	" " => " ",
  	"1" => ".----",
  	"2" => "..---",
  	"3" => "...--",
  	"4" => "....-",
  	"5" => ".....",
  	"6" => "-....",
  	"7" => "--...",
  	"8" => "---..",
  	"9" => "----.",
  	"0" => "-----"
  }

    morse = english.map do |letter|
      morse_dictionary[letter.downcase]
    end
    morse.join
  end

  def from_file(file)
    english = File.read(file).split("") #this shouldn't be passing... needs file in . directory to pass

    morse_dictionary = {
  	"a" => ".-",
  	"b" => "-...",
  	"c" => "-.-.",
  	"d" => "-..",
  	"e" => ".",
  	"f" => "..-.",
  	"g" => "--.",
  	"h" => "....",
  	"i" => "..",
  	"j" => ".---",
  	"k" => "-.-",
  	"l" => ".-..",
  	"m" => "--",
  	"n" => "-.",
  	"o" => "---",
  	"p" => ".--.",
  	"q" => "--.-",
  	"r" => ".-.",
  	"s" => "...",
  	"t" => "-",
  	"u" => "..-",
  	"v" => "...-",
  	"w" => ".--",
  	"x" => "-..-",
  	"y" => "-.--",
  	"z" => "--..",
  	" " => " ",
  	"1" => ".----",
  	"2" => "..---",
  	"3" => "...--",
  	"4" => "....-",
  	"5" => ".....",
  	"6" => "-....",
  	"7" => "--...",
  	"8" => "---..",
  	"9" => "----.",
  	"0" => "-----"
  }

    morse = english.map do |letter|
      morse_dictionary[letter.downcase]
    end
    morse.join
  end

  def morse_to_eng(word)
    morse = word.split(" ") #cant split every space now
    #need to iterate over contents of words to match to inverted hash keys

    morse_dictionary = {
  	"a" => ".-",
  	"b" => "-...",
  	"c" => "-.-.",
  	"d" => "-..",
  	"e" => ".",
  	"f" => "..-.",
  	"g" => "--.",
  	"h" => "....",
  	"i" => "..",
  	"j" => ".---",
  	"k" => "-.-",
  	"l" => ".-..",
  	"m" => "--",
  	"n" => "-.",
  	"o" => "---",
  	"p" => ".--.",
  	"q" => "--.-",
  	"r" => ".-.",
  	"s" => "...",
  	"t" => "-",
  	"u" => "..-",
  	"v" => "...-",
  	"w" => ".--",
  	"x" => "-..-",
  	"y" => "-.--",
  	"z" => "--..",
  	" " => " ",
  	"1" => ".----",
  	"2" => "..---",
  	"3" => "...--",
  	"4" => "....-",
  	"5" => ".....",
  	"6" => "-....",
  	"7" => "--...",
  	"8" => "---..",
  	"9" => "----.",
  	"0" => "-----"
  }

    english = morse.map do |code|
      morse_dictionary.invert[code.downcase]
    end
    english.join('')
  end



end
