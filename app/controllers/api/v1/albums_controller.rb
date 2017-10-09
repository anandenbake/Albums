module Api
	module V1

		class AlbumsController < ApplicationController 

			#http_basic_authenticate_with name: "admin", passsword: "secret"
			#before_action :restrict_access

			respond_to :json
			#respond_to json: {status: 'SUCCESS', message:'Loded Albums', data:@albums}, status: "ok"


			def index
				respond_with Album.all
			end

			def show
				respond_with Album.find(params[:id])
			end

			def create
				@name = params[:album][:name]
				@description = params[:album][:description]
				@user_id = params[:album][:user_id]
				respond_with Album.create(name: @name, description: @description, user_id: @user_id)
			end

			def update

				respond_with Album.update(params[:id], params[:album])
			end

			def destroy
				respond_with Album.destroy([params[:id]])
			end

			#private
			#def restrict_access
			#	api_key = ApiKey.find_by_access_token(params[:access_token])
			#	head :unauthorized unless api_key

		  #end

		  #def restrict_access
		  	#authenticate_or_request_with_http_token do |token, options|
		  		#ApiKey.exists?(access_token: token)
		  #end
		
	end
end
end