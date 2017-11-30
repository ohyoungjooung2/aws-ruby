require 'aws-sdk-ec2'
ec2 = Aws::EC2::Resource.new(region: 'ap-northeast-2')

ec2.vpcs.each { |vpc| puts "#{vpc.id} #{vpc.is_default} #{vpc.tags.each{|e|  e.key } }"  }
