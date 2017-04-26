class Admin::AlbumsController < ApplicationController
  before_action :admin_login_required
  
  def destroy
    @album = Album.find(params[:id])
    
    if current_admin_can? :destroy, @album
      @album.destroy
      redirect_to root_path
    else
      redirect_to root_path, :notice => "You cannot do that, sorry"
    end

  end

end
