variable "load_balancer_type" {
    default = "application"
}
variable "port" {
    default = "80"
}
variable "protocol" {
    default = "HTTP"
}
variable "vpc_id" {
    default = "vpc-0edeb76efc079af04"
}
variable "action_type" {
    default = "forward"
}
variable "subnets" {
    default = ["subnet-07357dd600566f93c" , "subnet-0f1d821e42358bc0a"]
    }