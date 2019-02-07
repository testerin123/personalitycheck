# frozen_string_literal: true

# Questions controller
class QuestionsController < ApplicationController
  def show
    redirect_to '/' if User.count.zero?

    user_answers = UserAnswer.all
    answered_question_ids =
      user_answers.map(&:answer).map(&:question).pluck(:id)

    @question_count = Question.count
    @question_number = 1 + answered_question_ids.count
    @question = Question.where.not(id: answered_question_ids).first

    redirect_to '/result' if @question.nil?
  end

  def create_user_answer
    answer_id = answer_params[:answer_id]
    user_id = User.first.id

    UserAnswer.create(user_id: user_id, answer_id: answer_id)

    redirect_to action: 'show'
  end

  private

  def answer_params
    params.permit(:answer_id)
  end
end
