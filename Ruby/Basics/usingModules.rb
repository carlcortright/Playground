# An example of using modules
require "./Module1.rb"

sentence = "My favorite language is julia, but ruby will do :)"
words = Ex25.break_words(sentence)
puts(words)

sorted_words = Ex25.sort_words(words)
puts(sorted_words)

Ex25.print_first_word(sorted_words)
Ex25.print_last_word(sorted_words)