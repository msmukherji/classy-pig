require './player'

class Game
  def initialize
    @game
  end

  def get_players
    puts "\nHow many people are playing?\n\n"
    num_players = gets.chomp.to_i
    
    arr_players = []

    num_players.times do |person|
      puts "\n\nPlayer #{person+1}, what's your name?\n\n"
      name = gets.chomp
      arr_players.push Player.new(name)
    end

    print "\nAll right, get ready to play! Press enter to continue."
    $stdin.gets

    return arr_players
  end

# This could probably be broken out into smaller functions

  def play
    players_and_scores = get_players

    possible_winners = []

    roll = 0

    loop do
  
      players_and_scores.each do |player|
        roll = roll player.name
        player.add_to_score roll
    
        puts "\n#{player.name}, your total score so far is #{player.score} points. Press enter to continue.\n\n"
        puts "**********************************************************************"
        $stdin.gets
      end

      players_and_scores.each do |player|
        if player.score >= Max
          possible_winners.push player.name
        end
      end

      unless possible_winners.size == 0
        if possible_winners.size > 1
        puts "\nIt's a tie between #{possible_winners.join(" and ")}! Game over.\n\n"
        return
      else
        puts "\nGame over!  #{possible_winners.join} wins!\n\n"
        return
      end
    end
  end
end
end

class HogGame < Game

  def initialize
  end

  def roll name
    puts "\n#{name}, it's your turn.  How many dice would you like to roll (1-6)?\n\n"
    num_dice = gets.chomp.to_i
    dice = (1..num_dice).to_a
    dice_rolls = []
    sum = 0

    dice.each do |a|
      dice_rolls.push rand(1..6)
    end

    if dice_rolls.include? 1
      puts "\nAw, you rolled a 1!  No points this time. \n\n"#Press enter to continue.\n\n"
        #$stdin.gets
    else  
      dice_rolls.each {|a| sum += a} 
    end

    if sum > 0
      puts "\nYou scored #{sum} this round.\n\n"# Press enter to continue.\n\n"
        #$stdin.gets
    end

    return sum
  end
end

class PigGame < Game

  def initialize
  end

  def roll name
    turn_total = 0
    loop do
      roll = rand(1..6)
      puts "\n\n#{name}'s turn.  Press enter to roll."
      $stdin.gets
      puts "\n\n#{name}, you rolled a #{roll}.\n\n"

      if roll == 1
        puts "\n\nBummer!\n\n"
        return 0
      else
        turn_total += roll
        puts "Turn total so far: #{turn_total}. Roll again, #{name}? (y/n)\n\n"
        
        if gets.chomp == "n"
          return turn_total
        end
      end
    end
  end
end

