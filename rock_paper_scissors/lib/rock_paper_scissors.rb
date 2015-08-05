class String
  define_method(:rock_paper_scissors) do
    options = {0 => "rock", 1 => "paper", 2 => "scissors"}
    comp = options.fetch(rand(3))
    player1 = self
    if comp == player1
      winner = "You and the computer have tied."
    elsif (player1=="rock"&&comp=="scissors") || (player1=="paper"&&comp=="rock") || (player1=="scissors"&&comp=="paper")
      winner = "You chose " + player1 + " and the computer chose " + comp + ". You have won!"
    else
      winner = "You chose " + player1 + " and the computer chose " + comp + ". You have lost!"
    end
  end
end
