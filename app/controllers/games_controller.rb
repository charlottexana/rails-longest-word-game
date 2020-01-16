require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a
    # return @letters(1 + rand(my_array.count))
    return @letters.sample(10)
    # return @letters.shuffle
  end

  def score
    @score = params[:usertext]
    @result = ""
    url = open("https://wagon-dictionary.herokuapp.com/#{@score}")
    @result = JSON.parse(url.read)
    @final_score = @result["found"]

    # @spelling_message = ""

    # if @finalscore == true
    #   @spelling_message = "Congratulations! #{@score} is a valid English word!"
    # elsif @finalscore == false
    #   @spelling_message = "Sorry, but #{@score} does not seem to be a valid word"
    # elsif @score.blank?
    #   @spelling_message = "That's nothing, you dumbass!"
    # end

  end

end

  # def check_spelling
  #   @result = ""
  #   url = open("https://wagon-dictionary.herokuapp.com/#{@score}")
  #   @result = JSON.parse(url.read)
  #   @final_score = @result["found"]
  #   @spelling_message = ""

  #   if @finalscore == true
  #     @spelling_message = "Congratulations! #{@score} is a valid English word!"
  #   elsif @finalscore == false
  #     @spelling_message = "Sorry, but #{@score} does not seem to be a valid word"
  #   end
  # end

# end
