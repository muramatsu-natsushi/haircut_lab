class UsersController < ApplicationController
  # ユーザーがログインしていないと"show"にアクセスできない
  before_acrion :authenticate_user!, only: :show
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
  end
end
