class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
  end

  def show
    @photo = Photo.find params[:id]
  end

  def edit
    @id = params[:id]
  end

  def update
    photo = Photo.find(params[:id])
    photo.image_url = params[:photo][:image_url]

    photo.save
    redirect_to photo
  end

  # PUT/PATCH /photos/:id
  def create
    photo = Photo.new
    photo.title = params[:title]
    photo.image_url = params[:image_url]

    photo.save

    redirect_to "/photos"
  end

  # DELETE /photos/:id
  def destroy
    photo = Photo.find(params[:id])
    photo.destroy

    redirect_to "/photos"
  end
end
