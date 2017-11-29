class Api::SearchController < ApplicationController

  def index
    @projects = Project.top_five_results(search_params[:searchValue])
    render :index
  end

  private
  def search_params
    params.require(:search).permit(:searchValue)
  end

end

# Inside the params.require, it has to match with your ajax
