class UsersController < ApplicationController

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
    	flash[:success] = "Welcome to the Twitter Clone!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end
end