class AnswersController < ApplicationController
  before_action :authenticate_user!, alert: 'you must sign in first!'
  respond_to :html, :js
  # ajax is being used, thats why there is no redirect
  # URLs like 'answers/new' wont work, because everything is done with Ajax
    def index
        @answers = Answer.all
    end
    def show
      @answer = Answer.find(params[:id])
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
        if @answer.update_columns(comment: params[:answer][:comment])
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
    # this is the action for querying answers, which dont have its own index page
    # because application shows and performs everything on root page
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
