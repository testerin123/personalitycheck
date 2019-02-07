# frozen_string_literal: true

# Creates a table for users
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
