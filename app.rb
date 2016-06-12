# require './helpers/videohelper'

class Vbucket < Sinatra::Base
	Vbucket.use Rack::MethodOverride

	include VideoHelper

	get '/' do
		@videos = Video.order(id: :desc).all
		# @youtube_id = @videos[0].video_url.split("=").last

		erb :index
	end

	get '/videos/new' do
		erb (:"videos/new")
	end

	#create
	post '/videos' do

		@user = User.create(params[:users])
		@videos = Video.create(params[:videos])
		@vid_id = vidembed(@videos.video_url)
		puts @vid_id

		redirect "/"

	end


#show one video -->works! shows one video
#now it doesn't work :(
	get '/videos/:id' do
		@video = Video.find(params[:id])
		@youtube_id = @video.video_url.split("=").last
		# erb :index
		erb (:"videos/show")
	end

#show all videos -->works! shows all videos, click on one video to watch and it brings to that video!
	get '/videos' do
		@videos = Video.order(id: :desc).all
		erb(:index)
	end

#edit - like new, this gives us a form that will put/patch our changes 
get '/videos/:id/edit' do
	@video = Video.find(params[:id])
	erb(:"videos/edit")
end


post 'videos/:id' do
	@video = Video.find(params[:id])
	"hello world"
end


#update - like create, this does the actual updating
post "/videos/:id" do
	@video = Video.find(params[:id])
	if @video.update_attributes(params[:video])
		redirect ("/videos/#{@video.id}")
	else
		erb (:"videos/edit")
	end
end


#DELETE
	post '/videos/:id/delete' do
		@video = Video.find(params[:id])
		# p "Hello from Delete Route"
		@video.destroy

		redirect ('/videos')
	end


#RESTful video controller actions



post '/videos/new' do
		@user = User.new(params[:users])
		@videos = Video.new(params[:videos])

		if @video.save && user.save 
			redirect ("/videos/#{video.id}")
		else
			erb(:"videos/new")
	end
end

get '/videos/new' do
	@videos = Video.all
	erb (:"videos/new")
end


#LIST ROUTES

#show bucket list items
get '/list' do
	@buckets = Bucket.all
	erb :list
end


get '/buckets/show' do
	@buckets = Bucket.all
end

#create new bucket item

	post '/buckets' do

		@buckets = Bucket.create(params[:bucket])

		redirect "/"

	end


#update - like create, this does the actual updating
post "/buckets/:id" do
	@bucket = Bucket.find(params[:id])
	if @bucket.update_attributes(params[:bucket])
		redirect ("/buckets/#{@bucket.id}")
	else
		erb (:"buckets/edit")
	end
end

get "/buckets/:id" do
		@bucket = Bucket.find(params[:id])
		erb (:"buckets/show")
	end


end