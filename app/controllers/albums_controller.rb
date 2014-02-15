class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(:title => params[:album][:title])
    @attachment = @album.pictures.new
    @attachment.uploaded_picture = params[:attachment]

    if @album.save
      redirect_to albums_path
    else
      render 'new'
    end
  end
end
