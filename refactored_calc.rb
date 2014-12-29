# Calc.rb - A Simple Calculator Script

def num_check(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def prompt(words)
  puts ">>> #{words}"
end

def user_input
  begin
    num = gets.chomp
    puts "That's not a valid number, please try again" unless num_check(num)
  end until num_check(num)
  return num
end

prompt "Calculator Initalized: 100%"


begin 
prompt "Press: 1) Addition  2)Substraction  3)Multiply  4) Division" 
choice = gets.chomp 
  
  if choice == "1"
    prompt "1st input: "
    num1 = user_input
    prompt "2nd input: "
    num2 = user_input
    result = num1.to_i + num2.to_i
    prompt "The result is #{result}"
  

  elsif choice == "2"
    prompt "1st input: "
    num1 = user_input
    prompt "2nd input: "
    num2 = user_input
    result = num1.to_i - num2.to_i
    prompt "The result is #{result}"

  elsif choice == "3"
    prompt "1st input: "
    num1 = user_input
    prompt "2nd input: "
    num2 = user_input
    result = num1.to_i * num2.to_i
    prompt "The result is #{result}"

  elsif choice == "4"
    prompt "1st input: "
    num1 = user_input
    prompt "2nd input: "
    num2 = user_input
    result = num1.to_i / num2.to_f
    prompt "The result is #{result}"
  
  else
    prompt "That is not a valid choice"
  end

  prompt "Try Again? [y/n]"
  decision = gets.chomp.downcase
end while decision == "y"