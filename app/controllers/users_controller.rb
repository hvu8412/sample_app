class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user.params)
    if @user.save
      log_in @user
    else
      render :new
    end
  end
end