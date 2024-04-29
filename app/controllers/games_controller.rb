class GamesController < ApplicationController
  require 'open-uri'
  require 'json'

  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @guess = params[:word]
    @letters = params[:letters]
    #This is where our logic needs to go
    if valid_word?(@guess) && include?(@letters,@guess.upcase)
      @answer = "Congratulations!"
    elsif valid_word?(@guess)
      @answer = "Not in the grid"
    else
      @answer = "Not in english"
    end
  end


end
