class RpsController < ApplicationController

	def create
		@choose = params[:choose]


		@ai = ai(@choose)

		@assets = {'rock' => '/assets/rock.jpg',
			'paper' => '/assets/paper.png',
			'scissors' => '/assets/scissors.jpg'}

	end

	def ai(value)
		n = rand(3)
		if n == 0 
			if value == 'rock'
				return {:statement => 'tie', :ai => 'rock'}
			elsif value == 'paper'
				return {:statement => 'you win!', :ai => 'rock'}
			else
				return {:statement => 'you lose', :ai => 'rock'}
			end
		elsif n == 1
			if value == 'rock'
				return {:statement => 'you lose', :ai => 'paper'}
			elsif value == 'paper'
				return {:statement => 'tie', :ai => 'paper'}
			else
				return {:statement => 'you win!', :ai => 'paper'}
			end
		else
			if value == 'rock'
				return {:statement => 'you win!', :ai => 'scissors'}
			elsif value == 'paper'
				return {:statement => 'you lose', :ai => 'scissors'}
			else
				return {:statement => 'tie', :ai => 'scissors'}
			end
		end
	end

end