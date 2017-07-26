class CoverUploader < CarrierWave::Uploader::Base
  storage :file

  def default_url
    url = "uploads/#{model.class.to_s.underscore}/#{mounted_as}/default/cover.jpg"
    url.prepend('/') unless url[0] == '/'
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg png)
  end

end
