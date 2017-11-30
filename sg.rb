require 'aws-sdk-ec2'
ec2 = Aws::EC2::Resource.new(region: 'ap-northeast-2')

sg = ec2.create_security_group({
   group_name: 'MyGroovySecurityGroup',
   description: 'Security group for MyGroovyInstance',
   vpc_id: 'VPC_ID'

})

puts sg.id
