CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIAIVDEDEJMRC6D5Z7A ',                        # required unless using use_iam_profile
      aws_secret_access_key: ' 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 ',                        # required unless using use_iam_profile
      use_iam_profile:       true,                         # optional, defaults to false
      region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
      host:                  's3.example.com',             # optional, defaults to nil
      endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'website'                                      # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
