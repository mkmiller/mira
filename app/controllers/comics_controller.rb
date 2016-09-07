# Comics controller
class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.friendly.find(params[:id])
  end
end
