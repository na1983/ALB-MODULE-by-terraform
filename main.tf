resource "aws_lb" "my_alb" {
  name               = "my-alb"
  internal           = false
  load_balancer_type = var.load_balancer_type
  subnets            = var.subnets

}

resource "aws_lb_target_group" "my-target-group" {
  name     = "my-target-group"
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id

  health_check {
    path = "/"
  }
}

resource "aws_lb_listener" "my_listener" {
  load_balancer_arn = aws_lb.my_alb.arn
  port              = 80
  protocol          = "HTTP"
}
  default_action {
    type             = var.action_type
    target_group_arn = "
    arn:aws:elasticloadbalancing:eu-central-1:905418075028:targetgroup/my-target-group/cc6c14eeea2daa1f"
  }