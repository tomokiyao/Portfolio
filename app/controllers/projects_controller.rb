class ProjectsController < ApplicationController
  def index
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    project.save
    redirect_to project_path(project)
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
