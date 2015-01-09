class CornerstonesController < ApplicationController
  def create
    @cornerstone = Cornerstone.new(cornerstone_params)
    @cornerstone.save!
    flash[:notice] = "Bild wurde hochgeladen und gespeichert!"
    redirect_to :action => :new
  end

  def update
  end

  def destroy
  end

  def index
    @cornerstones = Cornerstone.all
  end

  def map
    @cornerstones = Cornerstone.all
  end

  def new
    @cornerstone = Cornerstone.new
  end

  private
  def cornerstone_params
    params.require(:cornerstone).permit(:image)
  end  

end
