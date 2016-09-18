# Web comics controller
class WebComicsController < ApplicationController
  def index
    @web_comics = WebComic.all
  end

  def show
    @web_comic = WebComic.friendly.find(params[:id])
  end
end
