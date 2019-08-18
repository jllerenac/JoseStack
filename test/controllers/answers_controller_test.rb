require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
    sign_in FactoryBot.create(:user)
  end

  test "submit new answer" do
    @answer = Answer.new(comment: 'Answer', user_id: 1, qid: 1)
    assert_difference('Answer.count') do
      post answers_path, params: { answer: { comment: @answer.comment, 
        user_id: @answer.user_id, qid: @answer.qid } }, xhr: true 
    end 
  end

  test "delete answer" do
    answer = answers(:one)
    assert_difference('Answer.count', -1) do
      delete answer_path(answer), xhr: true 
    end
  end
  # There is no need for redirect because I am using Ajax for request 
end
