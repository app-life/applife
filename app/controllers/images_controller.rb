class ImagesController < ApplicationController
  # POST /images
  # POST /images.json
  def create
    @image = Image.new({image: params[:image]})

    respond_to do |format|
      if @image.save
        format.html { render json: { name: @image.image.identifier, url: @image.image.url } }
        format.json { render json: { name: @image.image.identifier, url: @image.image.url } }
      end
    end
  end
end