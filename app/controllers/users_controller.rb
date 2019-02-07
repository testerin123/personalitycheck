# frozen_string_literal: true

# UserController
class UsersController < ApplicationController
  def create
    User.create(name: user_params[:user_name])

    redirect_to '/questionaire'
  end

  private

  def user_params
    params.permit(:user_name)
  end
end
