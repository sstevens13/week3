class DiceController < ApplicationController

	def roll
		@point = params[:point]
		@dice1 = rand(6) + 1
		@dice2 = rand(6) + 1
		@message

		if @point == nil
			@point = @dice1 + @dice2

			if @point == 7 || @point == 11
				@message = 'YOU WIN!'
			elsif @point == 2 || @point == 3 || @point == 12
				@message = 'YOU LOSE.'
			else
				@message = "Your point is now #{@point}. Roll again."
			end
		else
			@new_roll = @dice1 + @dice2
			if @point.to_i == @new_roll.to_i
				@message = 'YOU WIN!'
			elsif @new_roll == 7
				@message = 'YOU LOSE.'
			else
				@message = "Your point is #{@point}. Roll again."
			end
		end

		@assets = {1 => '/assets/dice/1.png', 
			2 => '/assets/dice/2.png',
			3 => '/assets/dice/3.png',
			4 => '/assets/dice/4.png',
			5 => '/assets/dice/5.png',
			6 => '/assets/dice/6.png'}

	end

end