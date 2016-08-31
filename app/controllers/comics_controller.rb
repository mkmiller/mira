# Comics controller
class ComicsController < ApplicationController
  def index
  end

  def show
    @comic = Comic.find(params[:id])
  end
end
