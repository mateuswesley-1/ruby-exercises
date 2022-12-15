# Since lesson #8 is on methods, you will be writing the entire method.
# To gain more familiarity, look up the documentation for each hint.
# Remember to unskip the corresponding tests one at a time.

# method name: #ascii_translator
# parameter: number (an integer)
# return value: the number's ASCII character (https://www.ascii-code.com/)
# hint: use Integer#chr
def string_numerica(string)
  begin
    Integer(string)
    return true
  rescue
    false
  end
end

def number_range(range_start, range_end, number)
  # Checando se os inputs sao inteiros
  unless string_numerica(number)
    raise "Entre com um número válido!"
  end

  unless string_numerica(range_start)
    raise "Entre com um número INICIAL válido!"
  end

  unless string_numerica(range_end)
    raise "Entre com um número FINAL válido!"
  end

  if number<=range_end && number>=range_start
    true
  else
    false
  end

end

def ascii_translator(number)
  unless string_numerica(number)
    raise "Valor '#{number}' nao e um inteiro valido. Valor inserido "
    return
  end

  unless number_range(0, 255, number.to_i)
    raise "Numero #{number.to_i} fora do range 0-255"
    return
  end

  number.to_i.chr
end


# method name: #common_sports
# parameters: current_sports and favorite_sports (both arrays)
# return value: an array containing items in both arrays
# hint: use Array#intersection
def common_sports(current_sports, favorite_sports)

  unless current_sports.is_a? Array
    raise "A variavel #{current_sports} nao e uma Array"
    return
  end

  unless favorite_sports.is_a? Array
    raise "A variavel #{favorite_sports} nao e uma Array"
    return
  end

  current_sports.intersection(favorite_sports)
end


# method name: #alphabetical_list
# parameter: games (an array)
# return value: games, alphabetically sorted and duplicates removed
# hint: chain Array#sort and Array#uniq together
def alphabetical_list(games)
  unless games.is_a? Array
    raise "A variavel #{games} nao e uma Array"
    return
  end

  games.uniq.sort
end

# method name: #lucky_number
# parameter: number (an integer) with default value of 7
# return value: a string "Today's lucky number is <number>"
def lucky_number(number=7)
  unless string_numerica(number)
    raise "Valor '#{number}' nao e um inteiro valido."
    return
  end

  "Today's lucky number is #{number}"
end

# method name: #ascii_code
# parameter: character (a string)
# return value: the character's ordinal number
# explicit return value: 'Input Error' if character's length does not equal 1
# hint: use String#ord
def ascii_code(character)
  unless character.is_a? String
    return "Input Error. #{character} nao e uma string."
  end

  unless character.length == 1
    return 'Input Error'
  end

  character.ord
end


# method name: #pet_pun
# parameter: animal (a string)
# return value: nil
# console output: if animal is 'cat', 'Cats are purr-fect!' (perfect)
# console output: if animal is 'dog', 'Dogs are paw-some!' (awesome)
# console output: otherwise, "I think <animal>s have pet-tential!" (potential)
# hint: use puts
def pet_pun(animal)
  unless animal.is_a? String
    return "Input Error. #{animal} nao e uma string."
  end

  if animal.strip.downcase == 'cat'
    puts 'Cats are purr-fect!'
  elsif animal.strip.downcase == 'dog'
    puts 'Dogs are paw-some!'
  else
    puts "I think #{animal}s have pet-tential!"
  end
end



# method name: #twenty_first_century?
# parameter: year (an integer)
# return value: true if the year is between 2001 - 2100, otherwise return false
# hint: use Comparable#between?

def twenty_first_century?(year)
  unless string_numerica(year)
    raise "Valor '#{year}' nao e um inteiro valido."
    return
  end

  year.between? 2001,2100
end
