#require 'carrierwave'
# require 'rmagick'

class VideoUploader < CarrierWave::Uploader::Base
	# include CarrierWave::Rmagick
	# version :thumb do
	# 	process :resize_to_fill => [200, 200]
	# end

	#include rmagick or minimagick support:
	# include CarrierWave::Rmagick 
	#include CarrierWave::MiniMagick


	#what kind of storage to use for this uploader
	storage :fog

	# #override directory where uploaded files will be stored

	# process :set_content_type
end
