class QuestionsController < ApplicationController
  before_action :authenticate_user!, alert: 'you must sign in first!'
  respond_to :html, :js
    def index
        @questions = Question.all
    end
    def show
        @question = Question.find(params[:id])
    end
    def new
        @question = Question.new
    end
    def edit
      @question = Question.find(params[:id])
    end
    def create
 #       @question = Question.new(question_params)
      @question = Question.create(question_params)
      respond_to do |f|
        f.js { render 'new' }
      end
  #      if @question.save
  #        redirect_to questions_path
  #      else
  #        redirect_to questions_path
  #      end
    end
    def update
      @question = Question.find(params[:id])
 
      if @question.update(question_params)
        redirect_to questions_path
      else
        render 'edit'
      end
    end
    def destroy
      @question = Question.find(params[:id])
      @question.destroy
      redirect_to questions_path
    end
    def check_for_back
      if params[:commit] == "Back"
        redirect_to questions_path
      end
    end
  private
    def question_params
      params.require(:question).permit(:title, :text, :user_id)
    end


end
