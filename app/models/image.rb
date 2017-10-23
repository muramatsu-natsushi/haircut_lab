class Image < ApplicationRecord
  belongs_to :content
  
  mount_uploader :video, VideoUploader
  

  def set_success(format, opts)
    self.success = true
  end

  
end
