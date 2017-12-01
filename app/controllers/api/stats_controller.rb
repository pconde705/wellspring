class Api::StatsController < ApplicationController
  def total_project_count
    @projects = Project.all_projects
    render json: @projects
  end

  def total_funded_projects
    @projects_funded = Project.all_funded_projects
    render json: @projects_funded
  end

  def total_backing_users
    @project_backers = ProjectBacker.all_backers
    render json: @project_backers
  end
end
