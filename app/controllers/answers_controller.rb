class AnswersController < ApplicationController
    def index
 #       @answers = Question.find(params[:qid])
    end
    def create
#        @question = Question.find(params[:question_id])
#        @answer = @question.answers.create(answer_params)
#        redirect_to question_path(@question)
    end
     
    private
      def answer_params
      params.require(:answer).permit(:comment, :user_id, :qid)
    end
end
