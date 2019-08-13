class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :comment
      t.integer :user_id
      t.integer :qid

      t.timestamps
    end
  end
end
