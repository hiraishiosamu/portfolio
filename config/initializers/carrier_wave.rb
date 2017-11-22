if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAIRZDN7ESTGFTASYQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['hiraosa']
  end
end