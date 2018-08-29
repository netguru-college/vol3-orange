class ImageUploader < CarrierWave::Uploader::Base

<<<<<<< HEAD
  #storage :fog
  storage :file
=======
  storage :fog
  #storage :file
>>>>>>> parent of 056c2e3... fix carrierwave

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
