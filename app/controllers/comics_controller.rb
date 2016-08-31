# Comics controller
class ComicsController < ApplicationController
  def index
  end

  def show
    @comic = Comic.friendly.find(params[:id])
  end
end
