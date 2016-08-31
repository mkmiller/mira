# Anthologies controller
class AnthologiesController < ApplicationController
  def index
  end

  def show
    @anthology = Anthology.find(params[:id])
  end
end
