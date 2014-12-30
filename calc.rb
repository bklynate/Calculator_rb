# Calc.rb - A Simple Calculator Script

def number_check(number)
  number.to_i.to_s == number || number.to_f.to_s == num
end

def prompt(words)
  puts ">>> #{words}"
end

def user_input
  begin
    number = gets.chomp
    prompt "That's not a valid number, please try again" unless number_check(number)
  end until number_check(number)
  return number
end

def valid_choice
  begin
    choice_list = ["1","2","3","4"]
    choices = gets.chomp
    puts  "That's not a valid choice, please try again" unless choice_list.include?(choices)
  end until choice_list.include?(choices)
  return choices
end

prompt "Calculator Initalized: 100%"

begin 
  prompt "Press: 1) Addition  2)Substraction  3)Multiply  4) Division" 
  choice = valid_choice

  prompt "1st input: "
  num1 = user_input
  prompt "2nd input: "
  num2 = user_input 
  
  if choice == "1"
    result = num1.to_i + num2.to_i  

  elsif choice == "2"
    result = num1.to_i - num2.to_i

  elsif choice == "3"
    result = num1.to_i * num2.to_i

  elsif choice == "4"
    result = num1.to_i / num2.to_f
  end

  prompt "The result is #{result}" if result
  prompt "Try Again? [y/n]"
  decision = gets.chomp.downcase
end while decision == "y"