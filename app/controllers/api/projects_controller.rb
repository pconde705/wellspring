class Api::ProjectsController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def index
    @projects = Project.all
    render :index
    # It will render index automatically, so you don't have to write the above.
  end

  def show
    @project = Project.find(params[:id])
    render :show
  end

  def create
    @project = Project.new(project_params)
    @project.creator_id = current_user.id
    if @project.save
      render :show
    else
      render json: @project.errors.full_messages, status: 422
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      render :show
    else
      render json: @project.errors.full_messages, status: 422
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    render :show
  end

  private
  def project_params
    params.require(:project).permit(:title, :creator_id, :category, :main_image_url, :extra_image_url, :description, :goal, :backers, :money_raised)
  end

end
