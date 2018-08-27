def run_guessing_game
  user_input = ""
  until user_input == 'exit' do
    puts "Guess a number between 1 and 6."
    user_input = gets.chomp
    computer_generated_number = rand(0..6)
    if user_input == 'exit'
      puts "Goodbye!"
      break
    else
      user_input = user_input.to_i
      if user_input == computer_generated_number
        puts "You guessed the correct number!"
      elsif user_input != computer_generated_number
        puts "The computer guessed #{computer_generated_number}."
      end  
    end
  end 
end 

run_guessing_game