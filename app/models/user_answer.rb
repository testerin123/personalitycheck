# frozen_string_literal: true

# UserAnswer model
class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :answer
end
