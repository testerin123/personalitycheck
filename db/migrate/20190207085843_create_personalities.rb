# frozen_string_literal: true

# Creates a table for personalities
class CreatePersonalities < ActiveRecord::Migration[5.2]
  def change
    create_table :personalities do |t|
      t.string :name, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
