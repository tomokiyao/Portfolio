class ProjectFavoritesController < ApplicationController

  def create
    project = Project.find(params[:project_id])
    project_favorite = current_user.project_favorites.build(project_id: project.id, user_id: current_user.id)
    project_favorite.save
    render json: params[:project_id]
  end

  def destroy
    project = Project.find(params[:project_id])
    project_favorite = current_user.project_favorites.find_by(project_id:params[:project_id])
    project_favorite.destroy
    render json: params[:project_id]
  end
end



  # def create
  #   project = Project.find(params[:project_id])
  #   project_favorite = ProjectFavorite.new(project_id: project.id, user_id: current_user.id)
  #   project_favorite.save
  #   redirect_to projects_path
  # end

  # def destroy
  #   project = Project.find(params[:project_id])
  #   project_favorite = ProjectFavorite.find_by(project_id:params[:project_id], user_id:current_user.id)
  #   project_favorite.destroy
  #   redirect_to projects_path
  # end