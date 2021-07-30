class SearchController < ApplicationController
  def index
    @author = params[:author]
    if PoemFacade.search(@author).present?
      @poems = PoemFacade.search(@author)
    else
      @poems = "No results found"
    end
  end
end