class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @user_skills = @user.skill.split(", ")
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
    @user =User.find(params[:id])
    a = user_params[:skill].join(", ")
    @user.update(email: user_params[:email], name: user_params[:name], skill: a)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
      params.require(:user).permit(:name,:kind_id,:residence,:profile_image,:pr,:experience, :email, skill: [])
  end
end
