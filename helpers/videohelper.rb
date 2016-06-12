
module VideoHelper
# require 'sinatra/base'
# helpers do

#   def vidembed(video_url) #from user input
#     youtube_id = video_url.split("=").last
#     content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
#   end

# end

# helpers do 
# def parse_youtube url
#    regex = /(?:.be\/|\/watch\?v=|\/(?=p\/))([\w\/\-]+)/
#    url.match(regex)[1]
# end



  def vidembed(video_url) #from user input
    youtube_id = video_url.split("=").last
    p 'hello from vidembed', youtube_id
    # content_tag(:iframe, nil, src: youtube_id)
  end
end
