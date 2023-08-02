#!/usr/bin/env ruby
#!/usr/bin/env ruby

def beginning_and_end_match(input)
  regex_pattern = /^h.n$/

  match_result = input.match(regex_pattern)

  !match_result.nil?
end

if ARGV.length == 1
  input_argument = ARGV[0]

  if beginning_and_end_match(input_argument)
    puts input_argument
  else
    puts "$"
  end
end

