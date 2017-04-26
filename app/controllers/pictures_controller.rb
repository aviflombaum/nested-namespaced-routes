class PicturesController < ApplicationController

  def show
    @picture = Picture.find(params[:id])
  end
  
  def create
    @album = Album.find(params[:album_id])
    @picture =  @album.pictures.build(picture_params)

    @picture.save
                              
    redirect_to album_picture_url(@picture.album, @picture)
  end


  private
    def picture_params
      params.require(:picture).permit(:url)
    end
end
