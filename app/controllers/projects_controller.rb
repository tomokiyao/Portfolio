class ProjectsController < ApplicationController
  def index
    @projects = Project.all.page(params[:page]).per(10)
    expired = Project.where("first_term < ?", Date.today)
    expired.each do |expired|
      expired.destroy
    end
  end

  def show
    @project = Project.find(params[:id])
    unless @project.user.skill == nil
      @user_skills = @project.user.skill.split(", ")
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if @project.save
      redirect_to project_path(@project.id)
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
    if @project.user_id != current_user.id
      redirect_to root_path
    end
  end

  def update
    project = Project.find(params[:id])
    project.update(project_params)
    redirect_to project_path(project.id)
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    redirect_to user_path(current_user.id)
  end

  def search
    expired = Project.where("first_term < ?", Date.today)
    expired.each do |expired|
      expired.destroy
    end
    @projects = Project.where("project_title like '%" + params[:search] +
                              "%' and genre like '%" + Project.genres[params[:genre]].to_s + "%' and location like '%" + Project.locations[params[:location]].to_s + "%'")
  end

  private
    def project_params
      params.require(:project).permit(:genre,:location,:fee,:time,:project_content,:project_title,:required_skill,:welcome_skill,:project_image_id,:detail_location,:first_term, :second_term)
    end
end
