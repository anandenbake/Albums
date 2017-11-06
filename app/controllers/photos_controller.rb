class PhotosController < ApplicationController
before_action :authenticate_user!
	def new
		@album = Album.find(params[:album_id])
		@photo = @album.photos.build
	end

	def create
		@album = Album.find(params[:album_id])
		
		@photo = @album.photos.new
		@photo.avatars = (params[:photo][:photo][:avatars])
		if @photo.save
			redirect_to @album
		else
			render 'new'
		end
	end

	def destroy
	@photo = Photo.find(params[:id])
	@photo.destroy

	#redirect_to albums_path
	redirect_to request.referrer

	
end
   
end
