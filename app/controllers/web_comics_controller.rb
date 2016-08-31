# Web comics controller
class WebComicsController < ApplicationController
  def index
  end

  def show
    @web_comic = WebComic.find(params[:id])
  end
end
