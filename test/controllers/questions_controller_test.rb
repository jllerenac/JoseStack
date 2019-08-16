require 'test_helper'

# class QuestionsControllerTest < ActionController::TestCase
class QuestionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
 #   @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryBot.create(:user)
  end

  test "submit new question" do
    @question = Question.new
#    assert_difference('Question.count') do
      post questions_path, params: { question: { title: @question.title, text: @question.text, user_id: @question.user_id } }
#    end 
    assert_redirected_to question_url(Question.last)  
  end 
end
