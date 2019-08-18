require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  test "title not empty" do
    assert_not Question.new(text: 'Ask a question', user_id: 1).save
  end
  test "text not empty" do
    assert_not Question.new(title: 'Ask', user_id: 1).save
  end
  test "user id not empty" do
    assert_not Question.new(title: 'Ask', text: "The Question").save
  end
  test "submit question" do
    assert Question.new(title: 'Title of question', text: 'Ask a question', user_id: 1).save
  end
end