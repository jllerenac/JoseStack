class QuestionsController < ApplicationController
    def def new
        
    end
  
    def create
        @question = Question.new(params.require(:question).permit(:title, :text, :user_id))
         @question.save
        redirect_to @question
    end
    def show
        @question = Question.find(params[:id])
    end
end
