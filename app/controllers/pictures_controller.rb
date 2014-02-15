class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
    send_data @picture.data, :filename => @picture.filename, :type => @picture.content_type
  end
end
