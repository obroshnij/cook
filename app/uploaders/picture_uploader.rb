# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  # include CarrierWave::ImageOptimizer
  include Cloudinary::CarrierWave

  process tags: ['image']
  #process :optimize
  process quality: 90

  # def default_url
  #   'http://res.cloudinary.com/dm8mr5ryk/image/upload/v1450970073/default_slider.jpg'
  # end
  # version :thumbnail do
  #   process :optimize
  # end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
