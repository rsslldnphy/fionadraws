class PicturesController < ApplicationController
  before_filter :authenticate_artist!

  def index
    @pictures = []
  end
end
