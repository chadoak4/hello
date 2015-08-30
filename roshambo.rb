file='open.txt'
f = File.open(file, "r")
f.each_line { |line|
  puts line
}
f.close
print ">"
name = gets.chomp.capitalize
  if name == ""
  exit
else file='welcome3.txt'
  f = File.open(file, "r")
  f.each_line { |line|
    puts line
  }
  f.close
  end

@loser_statements = [" You Won! False. You did not win!", "Fact. You are a loser.", "Bears, Beats, Battlestar Galictica, Loser"].sample
@replay_input = "yes"
@player_count = 0
@comp_count = 0
@rock = "Rock".upcase
@paper = "Paper".upcase
@scissors = "Scissors".upcase
@comp_input = [@rock, @paper, @scissors].sample
@bout_win = 0
@bout_lose = 0
@match_win = 0
@match_lose = 0

def game

leader_board = [@player_input_match_win, @comp_input_match_win]

@comp_input = [@rock, @paper, @scissors].sample

  puts "Player Score: #{@player_count} \tDwights Score: #{@comp_count}"

  print "Rock, Paper, Scissors, Schrute: "
  player_input = gets.chomp.upcase

  if player_input == @rock && @comp_input == @scissors
    puts "Player chose rock. \nDwight chose scissors."
    puts "Rock beats scissors, player wins the round."
    @player_count += 1

  elsif player_input == @scissors && @comp_input == @paper
    puts "Player chose scissors. \nDwight chose paper."
    puts "Scissors beat paper, player wins the round."
    @player_count += 1

  elsif player_input == @paper && @comp_input == @rock
    puts "Player chose paper. \nDwight chose rock"
    puts "Paper beats rock, player wins the round."
    @player_count += 1

  elsif @comp_input == @rock && player_input == @scissors
    puts "Player chose scissors. \nDwight chose rock."
    puts "Rock beats scissos, Dwight wins the round"
    @comp_count += 1

  elsif @comp_input == @scissors && player_input == @paper
    puts "Player chose paper. \nDwight chose scissors."
    puts "Scissors beats paper, Dwight wins the round"
    @comp_count += 1

  elsif @comp_input == @paper && player_input == @rock
    puts "Player chose rock. \nDwight chose paper."
    puts "Paper beats rock, Dwight wins the round"
    @comp_count += 1

  elsif player_input == @rock && @comp_input == @rock ||
        player_input == @paper && @comp_input == @paper ||
        player_input == @scissors && @comp_input == @scissors
    puts "Player chose rock. \nDwight chose rock."
    puts "Tie, choose again"
  end

  if @comp_count == 2
  puts "Dwight wins bout"
  @bout_win += 1
  @comp_count = @player_count = 1
  elsif @player_count == 2
  puts "Player wins bout!"
  @bout_lose += 1
  @comp_count = @player_count = 0
  end

  if @bout_win == 2
    @match_win += 1
    puts @loser_statements
    puts """
      Leader Board is as follows:
      You:#{@match_lose}
      Dwight:#{@match_win}
      """
    puts "Would you like to play again?(yes or no)"
    @replay_input = gets.chomp.downcase
  if @replay_input == "yes"
    @comp_count = @player_count = 0
    @bout_win = 0
    @bout_lose = 0
  end
  elsif @bout_lose == 2
    @match_lose += 1
    puts "You Win"
    file='DWIGHT.txt'
    f = File.open(file, "r")
    f.each_line { |line|
      puts line
    }
    f.close
    puts """
      Leader Board is as follows:
      You:#{@match_lose}
      Dwight:#{@match_win}
      """
    puts "Would you like to play again?(yes or no)"
    @replay_input = gets.chomp.downcase
    if @replay_input == "yes"
    @comp_count = @player_count = 0
    @bout_win = 0
    @bout_lose = 0
    end
  end
end
game until @replay_input != "yes"
