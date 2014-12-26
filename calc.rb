# Calc.rb - A Simple Calculator Script

def pyry(words)
  puts ">>> #{words}"
end

begin
  pyry "Calculator Initalized: 100%"
  pyry "Press: 1) Addition  2)Substraction  3)Multiply  4) Division" 
  choice = gets.chomp
  if choice == "1"
    pyry "1st input: "
    num1 = gets.chomp
    pyry "2nd input: "
    num2 = gets.chomp
    result = num1.to_i + num2.to_i
    pyry "The result is #{result}"
    pyry "Again[Y/N]?"
    decision = gets.chomp
  elsif choice == "2"
    pyry "1st input: "
    num1 = gets.chomp
    pyry "2nd input: "
    num2 = gets.chomp
    result = num1.to_i - num2.to_i
    pyry "The result is #{result}"
    pyry "Again[Y/N]?"
    decision = gets.chomp
  elsif choice == "3"
    pyry "1st input: "
    num1 = gets.chomp
    pyry "2nd input: "
    num2 = gets.chomp
    result = num1.to_i * num2.to_i
    pyry "The result is #{result}"
    pyry "Again[Y/N]?"
    decision = gets.chomp
  elsif choice == "4"
    pyry "1st input: "
    num1 = gets.chomp
    pyry "2nd input: "
    num2 = gets.chomp
    result = num1.to_i / num2.to_f
    pyry "The result is #{result}"
    pyry "Again[Y/N]?"
    decision = gets.chomp
  end
end while decision == "Y"

