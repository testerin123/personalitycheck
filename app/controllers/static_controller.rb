# frozen_string_literal: true

# Static controller
class StaticController < ApplicationController
  def index
    UserAnswer.all.map(&:delete)
    User.all.map(&:delete)
  end

  def result
    user_answers = UserAnswer.all

    # personality_answer_count = Personality.all.each do |personality|
    #   personality_answers = user_answers.select do |user_answer|
    #     user_answer.answer.personality.name == personality.name
    #   end
    # ((personality_answers.count / Answer.where(personality_id: personality.id).count.to_f) * 100).round(2)
    # end

    personalities = Personality.all.map { |p| [p.name, 0] }.to_h

    user_answers.each do |user_answer|
      name = user_answer.answer.personality.name

      personalities[name] += 1
    end

    max_personality_name = [personalities.max].to_h.keys.first

    @user_personality = Personality.where(name: max_personality_name).first
  end
end
