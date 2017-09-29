class AlbumsController < ApplicationController

	def index
		@albums = Album.all
	end

	 def show
	    @album = Album.find(params[:id])

	  end
	def new
		@album = current_user.albums.new
	end

	def edit
	  @album = Album.find(params[:id])
	end
 

	def create
		@album = current_user.albums.new(album_params)


		if @album.save
	    	flash[:notice] = "Your album has been created."
	    	redirect_to @album
	    else
	    	flash[:alert] = "Something went wrong."
	    	render :new
	end
end

	def update
	  @album = Album.find(params[:id])
	 
	  if @album.update(album_params)
	    redirect_to @album
	  else
	    render 'edit'
	  end
	end

    def destroy
		@album = Album.find(params[:id])
		@album.destroy

		redirect_to albums_path
	end


	private
	  def album_params
	    params.require(:album).permit(:name, :description)
	  end
end
