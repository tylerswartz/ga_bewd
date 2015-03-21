class ScramblesController < ApplicationController
  def new
  	words = Word.random
  	@random_word = words.name

  	def string_shuffle(s)
  		s.split("").shuffle.join
		end

		@scrambled_word	= string_shuffle(@random_word)
  end

  def show
  	@outcome_partial = 'win'
  	@outcome_partial = 'lose'
  end
end
