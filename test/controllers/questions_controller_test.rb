require 'test_helper'
# rspec gem is only use to authenticate in testing controllers
class QuestionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
    sign_in FactoryBot.create(:user)
  end

  test "submit new question" do
    @question = Question.new(title: 'Title of question', text: 'Ask a question', user_id: 1)
    assert_difference('Question.count') do
      post questions_path, params: { question: { title: @question.title, 
        text: @question.text, user_id: @question.user_id } }, xhr: true 
    end 
  end

  test "delete question" do 
    question = questions(:one)
    assert_difference('Question.count', -1) do
      delete question_url(question), xhr: true
    end
  end
end
