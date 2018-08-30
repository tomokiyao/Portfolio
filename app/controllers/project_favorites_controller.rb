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


