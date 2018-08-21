class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @user_skills = @project.user.skill.split(", ")
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    project.user_id = current_user.id
    project.save
    redirect_to project_path(project.id)
  end

  def edit
  end

  def update
  end

  private
    def project_params
      params.require(:project).permit(:genre,:location,:fee,:time,:project_content,:project_title,:required_skill,:welcome_skill,:project_image_id,:detail_location)
    end
end
