def greeting
  puts "Welcome to secret number game. What is your name?"
  name = gets.chomp
  puts "Hello #{name} let's play"
  puts "Pick a number between 1 and 100. You have 5 chances"
end


def guess_number(secret_number)
  user_number = gets.chomp.to_i
  chances = 5

  if user_number == secret_number
    puts "That's the secret number. You win!"
    exit
  elsif user_number > secret_number
    puts "You are to high. Guess again"
    puts "You have #{chances -1} guesses left."
  elsif user_number < secret_number
    puts "You are to low. Guess again"
    puts "You have #{chances -1} guesses left."
  end
end

greeting
chances = 5
random_number = rand(1..100)
puts "#{random_number} is secret number"
while chances < 6 && until chances == 0
  guess_number(random_number)
end
end
