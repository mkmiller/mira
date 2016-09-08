# Anthologies controller
class AnthologiesController < ApplicationController
  def index
    @anthologies = Anthology.all
  end

  def show
    @anthology = Anthology.friendly.find(params[:id])
  end
end
