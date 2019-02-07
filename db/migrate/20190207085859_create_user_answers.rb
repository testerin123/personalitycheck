# frozen_string_literal: true

# Creates a table for user_answers
class CreateUserAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_answers do |t|
      t.references :user, foreign_key: true, null: false
      t.references :answer, foreign_key: true, null: false

      t.timestamps
    end

    add_index :user_answers, [:user_id, :answer_id], unique: true
  end
end
