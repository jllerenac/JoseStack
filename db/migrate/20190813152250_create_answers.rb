class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :comment
      t.integer :user_id, null: false
      t.integer :qid, null: false

      t.timestamps
    end
  end
end
