# I am using required: false because I am handling answers separadetly from questions
# This is because I am using Ajax for CRUD, and I dont really need answers to completely be
# part of questions, this means that I dont need the route answers/:qid/new
# I related them in model and properly saving the ids in answer table
class Answer < ApplicationRecord
    belongs_to :question, required: false
end
