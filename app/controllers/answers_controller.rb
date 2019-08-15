class AnswersController < ApplicationController
  before_action :authenticate_user!, alert: 'you must sign in first!'
  respond_to :html, :js
    def index
        @answers = Answer.all
    end
    def new
        @answer = Answer.new
    end
    def edit
      @answer = Answer.find(params[:id])
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
    def update
      @answer = Answer.find(params[:id])
      respond_to do |f|
        @naId = @answer.id 
        if @answer.update(answer_params)
          f.js
        else
          format.json { render json: @answer.errors, status: :unprocessable_entity  }
        end
      end
    end
    def destroy
      @answer = Answer.find(params[:id])
      @deId = @answer.id 
      @answer.destroy
    end
    def queryByQId
      @answers = Answer.where(qid: params[:qId])
      respond_to do |f|
        f.js
      end 
    end 
    private
      def answer_params
      params.require(:answer).permit(:comment, :user_id, :qid)
    end
end
