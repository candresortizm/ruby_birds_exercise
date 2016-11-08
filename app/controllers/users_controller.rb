class UsersController < ApplicationController
  def new
    @user = User.new(first_name: "Jorge", last_name: "Gomez")
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to root_path
    end
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :first_name, :last_name, :password, :password_confirmation)
  end
end
