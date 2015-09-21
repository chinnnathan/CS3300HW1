require 'enumerator'
class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
   accepted_hands = ['r','p', 's'] 
   player1_hand = player1[1].downcase
   player2_hand = player2[1].downcase 
   if(0 == accepted_hands.count(player1_hand))
       return NoSuchStrategyError
   end 
   if(0 == accepted_hands.count(player2_hand))
       return NoSuchStrategyError
   end 
   if(player1_hand.eql?('r'))
      if(player2_hand.eql?('p'))
	return player2   
      else 
        return player1
      end         
   end
   if(player1_hand.eql?('p'))
      if(player2_hand.eql?('s'))
	return player2   
      else 
        return player1
      end         
   end
   if(player1_hand.eql?('s'))
      if(player2_hand.eql?('r'))
	return player2   
      else 
        return player1
      end         
   end
  end

  def self.tournament_winner(tournament)
    if(tournament[0][0].is_a? String)
	return winner(tournament[0], tournament[1])
    else
        return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
    end
  end
end


