variable "ami_id" {
   type = string 
   sensitive = true
}
variable "instance_type" {
}
variable "vpc_id" {
  type = string
  sensitive = true
}
variable "port" {
   sensitive = true
}
variable "cidr_block" {
}
variable "aws_region" {
}
variable "instance_count" {
}
