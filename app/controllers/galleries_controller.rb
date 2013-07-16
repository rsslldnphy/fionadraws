class GalleriesController < ApplicationController

  def show
    @gallery = Gallery.all.find { |g| g.id == params[:id].to_i }
  end
end
