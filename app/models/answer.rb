# frozen_string_literal: true

# Answer model
class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :personality
end
