class QuestionsController < ApplicationController
    def ask
    end

    def answer
      @answer = params[:answer]
      if @answer.downcase == "i am going to work" then
        @result = "Great!"
      elsif @answer.include?("?") then
        @result = "Silly question, get dressed and go to work!"
      else
        @result = "I don't care, get dressed and go to work!"
      end
    end
end
