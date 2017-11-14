require 'aws-sdk-s3'
require 'date'
s3 = Aws::S3::Resource.new(region: 'ap-northeast-2')
s3_client=Aws::S3::Client.new(region: 'ap-northeast-2')
#today_sec=Time.now.year.to_s + Time.now.month.to_s
#puts "#{today_sec}"
#mb=s3.bucket("oyj-test-#{today_sec}-ap-northeast-2")
#domain="oyj-test-#{today_sec}-ap-northeast-2"
#mb2=s3.bucket("#{domain}")
#mb2.create
s3.buckets.limit(50).each do |b|
   puts "#{b.name}"
   #s3_client.delete_bucket(bucket: 'b')
   b.clear!
   b.delete
   puts "#{b.name} deleted"
end
