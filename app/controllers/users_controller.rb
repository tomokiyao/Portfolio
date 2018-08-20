class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    if @user.skill == nil
    else
      @user_skills = @user.skill.split(", ")
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
    @user =User.find(params[:id])
    unless user_params[:skill] == nil
    a = user_params[:skill].join(", ")
    @user.update(email: user_params[:email], name: user_params[:name], skill: a, kind_id: user_params[:kind_id], residence: user_params[:residence], profile_image:user_params[:profile_image], pr:user_params[:pr], experience: user_params[:experience], top_image_id: user_params[:top_image_id], mission: user_params[:mission],
      service: user_params[:service], establishment: user_params[:establishment], employee: user_params[:employee], average_age: user_params[:average_age], catchphrase: user_params[:catchphrase], detail_residence: user_params[:detail_residence])
    redirect_to user_path(@user.id)
  else  
     @user.update(email: user_params[:email], name: user_params[:name], kind_id: user_params[:kind_id], residence: user_params[:residence], profile_image:user_params[:profile_image], pr:user_params[:pr], experience: user_params[:experience], top_image_id: user_params[:top_image_id], mission: user_params[:mission],
      service: user_params[:service], establishment: user_params[:establishment], employee: user_params[:employee], average_age: user_params[:average_age], catchphrase: user_params[:catchphrase], detail_residence: user_params[:detail_residence])
    redirect_to user_path(@user.id)
  end
  end

  private

  def user_params
      params.require(:user).permit(:name,:kind_id,:residence,:profile_image,:pr,:experience, :email, :top_image_id, :mission, :service, :establishment, :employee, :average_age, :catchphrase, :detail_residence, skill: [])
  end
end

 