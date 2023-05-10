class UserController < ApplicationController
  def show
    @user = current_user
    # @transactions = @user.transactions.includes(:user)
    # @user.avatar.attach(params[:avatar])
  end

  def deposit; end
  def withdraw; end
  def referral; end
end
