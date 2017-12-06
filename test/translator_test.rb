gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'

class TranslatorTest < Minitest::Test

  def test_translator_exists
    translator = Translate.new

    assert translator
  end

  def test_translator_works_lowercase
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse('hello world')
  end

  def test_translator_words_allcases_and_numbers
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse('Hello World')
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse('There are 3 ships')
  end

  def test_from_file_method
    translator = Translate.new

    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_morse_to_eng_works
    translator = Translate.new

    assert_equal "hello world", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end

end
