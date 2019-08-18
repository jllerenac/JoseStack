require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  test "comment not empty" do
    assert Answer.new(user_id: 1, qid: 1).save
  end
  test "No empty values" do
    assert_not_nil Answer.new(comment: 'Answer please',user_id: 1, qid: 1).save
  end
  test "question id not empty" do
    #this is an extra that validates that question id is not null
    # above test is enough for no empty values 
    # all three fields are required
  answer = answers(:one)
  puts answer.qid
  assert_not_nil(answer.qid, "is empty")
  end
  test "submit answer" do
    assert Answer.new(comment: 'Your Answer', user_id: 1, qid: 1).save
  end
end
