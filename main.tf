//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute_z" {
  source  = "app.terraform.io/mac-terraform/compute-z/aws"
  version = "2.0.0"

  aws_region          = "us-west-2"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCqTMOOJoiEECJFveUN9BIheA4y2x3VK5GY2SwNCSJBV1kSJMSbpFvrF+Rzu6cMptgwy7bXHGH1mktFIzf5kRvtoDOaOzcX7WkcS+GPiwJyzS9ylbrNcxnUy78whqfvleoq68lij19s7Ys80xdIOnbF9AURSbOuEU7ERsCG9btZdV2lpMmu2sy8zhec06jO49DgUz3jzk63QMWnrXe0+lBAnfwtpfuQPY+4eT/CpdIaOTxi2CAAFBv58yFWbEN9T2+1vkQoz3RJny06m/bJ6IB1ZyZYTJnislR3I6/SsJ61p3hyG8S6Yu8+NydnwLzPKIlWOBnAFFfhTyo9E1HvpPjn4W++ScQ9rK/QyNXjUhciSyC57JUDq8Ooh5EQko7E/CcHLn1tBxpW+wL1bQdPEKW/SRr5PJ7I3CAEwA6cXFK6vfUab/onWgtfBFMa8YO7rm0xyqvzipyix0y2CFwA1if8R7Wp3DdbQnZkIN4ItOq8ZswA0aBaENGdb8yRtKaCRFs= coozynllc@coozyns-mini.lan"
  public_sg           = module.networking_z.public_sg
  public_subnets      = module.networking_z.public_subnets
}

module "networking_z" {
  source  = "app.terraform.io/mac-terraform/networking-z/aws"
  version = "2.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "us-west-2"
}