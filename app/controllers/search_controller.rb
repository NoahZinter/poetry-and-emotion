class SearchController < ApplicationController
  def index
    @author = params[:author]
  end
end