class SearchController < ApplicationController
  def index
    @members = SearchFacade.get_members(params[:nation])
  end
end
