# require 'carrierwave/storage/abstract'
# require 'carrierwave/storage/file'
# require 'carrierwave/storage/fog'

# CarrierWave.configure do |config|
#   if Rails.env.staging? || Rails.env.production?
#     config.fog_provider = 'fog/aws'
#     config.fog_credentials = {
#       :provider => 'AWS',
#       :aws_access_key_id => ENV['S3_KEY'],
#       :aws_secret_access_key => ENV['S3_SECRET'],
#       :region => ENV['S3_REGION'] # Tokyo
#     }
#     config.fog_directory = ENV['S3_BUCKET_NAME']
#     config.storage = :fog
#   else
#     config.storage = :file
#     config.enable_processing = Rails.env.development?
#   end
# end

# CarrierWave.configure do |config|
#   if Rails.env.staging? || Rails.env.production?
#     config.fog_provider = 'fog/aws'
#     config.fog_credentials = {
#       :provider => 'AWS',
#       :aws_access_key_id => ENV['S3_KEY'],
#       :aws_secret_access_key => ENV['S3_SECRET'],
#       :region => ENV['S3_REGION'] # Tokyo
#     }
#     config.fog_directory = ENV['S3_BUCKET_NAME']
#     config.storage = :fog
#   else
#     config.storage = :file
#     config.enable_processing = Rails.env.development?
#   end
# end

# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     # Configuration for Amazon S3
#     :provider              => 'AWS',
#     :aws_access_key_id     => ENV['S3_KEY'],
#     :aws_secret_access_key => ENV['S3_SECRET'],
#     :region                => ENV['S3_REGION']
#   }

#   config.cache_dir = "#{Rails.root}/tmp/uploads"
#   config.fog_directory  = ENV['S3_BUCKET_NAME']
#   config.fog_public     = false
#   config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
#   config.storage = :fog
# end