class ParamsController < ApplicationController
  def param_1
    name = params[:name]
    if name[0].downcase == "a"
      @message = "hey your name starts with the first letter of the alphabet"
    else
      @message =name.upcase
    end
  end

  def guess_game
    secret_number = 7
    if params[:number].to_i > secret_number
      @message = "your guess is too high"
    elsif params[:number].to_i < secret_number
      @message = "your guess is too low"
    else params[:number].to_i == secret_number
      @message = "you guessed my number"
    end
  end
end
      


