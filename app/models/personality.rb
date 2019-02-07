# frozen_string_literal: true

# Personality model
class Personality < ApplicationRecord
  has_many :answers
end
