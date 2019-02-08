# frozen_string_literal: true

# Static controller
class StaticController < ApplicationController
  def index
    UserAnswer.all.map(&:delete)
    User.all.map(&:delete)
  end

  def result
    user_answers = UserAnswer.all

    personalities = Personality.all.map { |p| [p.name, 0] }.to_h

    user_answers.each do |user_answer|
      name = user_answer.answer.personality.name

      personalities[name] += 1
    end

    max_personality_name = [personalities.max_by { |_k, v| v }].to_h.keys.first

    @user_personality = Personality.where(name: max_personality_name).first
  end
end
