#!/usr/bin/env ruby

def extract_capital_letters(input)
  capital_letters = input.scan(/[A-Z]/)

  capital_letters.join
end

if ARGV.length == 1
  input_argument = ARGV[0]

  capital_letters_result = extract_capital_letters(input_argument)
  puts capital_letters_result
end
