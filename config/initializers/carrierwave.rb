# coding: utf-8
CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY'],
    aws_secret_access_key: ENV['AWS_SECRET'],
    region: 'us-east-2'
  }

  config.fog_directory  = 'lovesaemi-tres2'
  config.asset_host = "https://s3.us-east-2.amazonaws.com/lovesaemi-tres2"
  config.cache_storage = :fog
end
#arn:aws:iam::269756420536:user/lovesaemi-tres1

__END__
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "ListObjectsInBucket",
            "Effect": "Allow",
            "Action": ["s3:ListBucket"],
            "Resource": ["arn:aws:s3:::bucket-name"]
        },
        {
            "Sid": "AllObjectActions",
            "Effect": "Allow",
            "Action": "s3:*Object",
            "Resource": ["arn:aws:s3:::bucket-name/*"]
        }
    ]
}
