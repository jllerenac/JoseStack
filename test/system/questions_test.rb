require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
   test "submitting questions" do
     visit new_question_path
  #   click_on "ASK"
  #   assert_selector "h1", text: "Questions"
   end
end
