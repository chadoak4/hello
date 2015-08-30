print """
Welcome to ESPN's Rock, Paper, Scissors Championship!
This is the final game and the winner takes home
$100,000,000.  Please tell the audience your name:
>"""
name = gets.chomp.capitalize
  if name == ""
  exit
else puts "Thank you #{name}! Let's get started!!"
  end
puts """
Rules are as follows:
Each throw is considered an engagement.
The best two of three engagements is a bout.
The best two of three bouts is a match.
Winner of the match wins $100,000,000!
"""
puts """
Here we go!!
"""
@replay_input = "yes"
@player_count = 0
@comp_count = 0

@rock = "Rock".upcase
@paper = "Paper".upcase
@scissors = "Scissors".upcase
@comp_input = [@rock, @paper, @scissors].sample
@bout_win = 0
@bout_lose = 0

puts @comp_input

def game

@comp_input = [@rock, @paper, @scissors].sample

  puts "Player Score: #{@player_count} \tComputer Score: #{@comp_count}"

  print "Rock, Paper, Scissors, schute: "
  player_input = gets.chomp.upcase

  if player_input == @rock && @comp_input == @scissors
    puts "Player chose rock. \nComputer chose scissors."
    puts "Rock beats scissors, player wins the round."
    @player_count += 1

  elsif player_input == @scissors && @comp_input == @paper
    puts "Player chose scissors. \nComputer chose paper."
    puts "Scissors beat paper, player wins the round."
    @player_count += 1

  elsif player_input == @paper && @comp_input == @rock
    puts "Player chose paper. \nComputer chose rock"
    puts "Paper beats rock, player wins the round."
    @player_count += 1

  elsif @comp_input == @rock && player_input == @scissors
    puts "Player chose scissors. \nComputer chose rock."
    puts "Rock beats scissos, Computer wins the round"
    @comp_count += 1

  elsif @comp_input == @scissors && player_input == @paper
    puts "Player chose paper. \nComputer chose scissors."
    puts "Scissors beats paper, Computer wins the round"
    @comp_count += 1

  elsif @comp_input == @paper && player_input == @rock
    puts "Player chose rock. \nComputer chose paper."
    puts "Paper beats rock, Computer wins the round"
    @comp_count += 1

  elsif player_input == @rock && @comp_input == @rock ||
        player_input == @paper && @comp_input == @paper ||
        player_input == @scissors && @comp_input == @scissors
    puts "Player chose rock. \nComputer chose rock."
    puts "Tie, choose again"
  end

  if @comp_count == 2
  puts "Computer wins bout"
  @bout_win += 1
  @comp_count = @player_count = 0
  elsif @player_count == 2
  puts "Player wins bout"
  @comp_count = @player_count = 0
  @bout_lose += 1
  end

  if @bout_win == 2 || @bout_lose == 2
   puts "Game Over! Would you like to play again?(yes or no)"
   @replay_input = gets.chomp
  end
  if @replay_input == "yes".downcase
  end
end


game until @replay_input != "yes"
