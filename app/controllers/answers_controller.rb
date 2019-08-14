class AnswersController < ApplicationController
    def index
        @answers = Answer.all
    end
    def new
        @answer = Answer.new
    end
    def create
        @answer = Answer.create(answer_params)
          respond_to do |f|
          if @answer.save
            f.js
          else
            format.json { render json: @answer.errors, status: :unprocessable_entity  }
          end 
        end
    end
    def queryByQId
      @answers = Answer.where(qid: 1)
      respond_to do |f|
        f.js
      end 
    end 
    private
      def answer_params
      params.require(:answer).permit(:comment, :user_id, :qid)
    end
end
