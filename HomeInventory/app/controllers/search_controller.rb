class SearchController < ApplicationController
  def index
    @search = Item.search(params[:search])
    if params[:search] && !params[:search][:name_contains].blank?
      @items = @search.all
    end
  end

  def results
     
  end

end
