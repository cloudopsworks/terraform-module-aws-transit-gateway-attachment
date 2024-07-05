##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

output "transit_gateway_attachments" {
  value = [
    for x in aws_ec2_transit_gateway_vpc_attachment.this : {
      id                 = x.id
      vpc_id             = x.vpc_id
      transit_gateway_id = x.transit_gateway_id
    }
  ]
}