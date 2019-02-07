# frozen_string_literal: true

# Creates a table for questions
class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :body, null: false

      t.timestamps
    end
  end
end
