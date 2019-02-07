# frozen_string_literal: true

# Question model
class Question < ApplicationRecord
  has_many :answers
end
