class Api::StatsController < ApplicationController
  def total_project_count
    @projects = Project.all_projects
    render 'show'
  end

  def total_funded_projects
    @projects = Project.all_funded_projects
    render 'show'
  end

  def total_backing_users
    @project_backers = ProjectBacker.all_backers
    render 'show'
  end
end
