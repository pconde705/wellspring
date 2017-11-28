class Api::SearchController < ApplicationController

  def index
    @projects = Project.top_five_results(search_params[:title])
    render :index
  end
  
  private
  def search_params
    params.require(:search).permit(:title, :category, :description)
  end

end
