class GameController < ApplicationController
  def results
    puts params.inspect
    @player1 = Gladiator.find(params[:player1])
    @player2 = Gladiator.find(params[:player2])
    @fight = Fight.new
    
    
    score1 = rand(@player1.strength)+rand(@player1.intelligence)+rand(@player1.agility)+rand(@player1.damage)
    score2 = rand(@player2.strength)+rand(@player2.intelligence)+rand(@player2.agility)+rand(@player2.damage)
    
    if score1 > score2
      @fight.winner = @player1
      @fight.loser = @player2
    elsif score2 > score1
      @fight.winner = @player2
      @fight.loser = @player1
    end
    @fight.save
  end
  
  
  def fight
    @gladiators = Gladiator.all
    @newglad = Gladiator.new
  end
  
  def select_players
    @gladiators = Gladiator.all
    unless @gladiators.blank?
      size = @gladiators.size
      begin
        @player1 = @gladiators[rand(size-1)]
        @player2 = @gladiators[rand(size-1)]
      end while (@player1 == @player2)
    else
      flash[:error] = 'No brave gladiator'
    end
    render 'fight'
  end
  
end


