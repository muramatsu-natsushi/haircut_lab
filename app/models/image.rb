class Image < ApplicationRecord
  
  belongs_to :content
  
  mount_uploader :video_url, VideoUploader
  
end
