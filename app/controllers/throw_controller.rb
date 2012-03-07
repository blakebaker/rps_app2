class ThrowController < ApplicationController
	before_filter do
		@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
		@throws = @defeat.keys	
	end
	
	def throwing
		  # the params[] hash stores querystring and form data.
		  @player_throw = params[:type].to_sym

		  # in the case of a player providing a throw that is not valid,
		  # we halt with a status code of 403 (Forbidden) and let them
		  # know they need to make a valid throw to play.
		  if !@throws.include?(throwing)
			halt 403, "You must throw one of the following: #{@throws}"
		  end

		  # now we can select a random throw for the computer
		  @computer_throw = @throws.sample

		  # compare the player and computer throws to determine a winner
		  if @player_throw == @computer_throw
			@status = "You tied with the computer. Try again!"
			session[:tie]+= 1
		  elsif @computer_throw == @defeat[@player_throw]
			@status = "Nicely done; #{@player_throw} beats #{@computer_throw}!"
			session[:win]+= 1
		  else
			@status = "Ouch; #{@computer_throw} beats #{@player_throw}. Better luck next time!"
			session[:loss]+= 1
		  end
	end
end
