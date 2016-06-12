class User < ActiveRecord::Base
  has_many :videos
  has_many :buckets

end
