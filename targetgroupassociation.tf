resource "aws_lb_target_group_attachment" "test1" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.nodejs.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "test2" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.nodejs1.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "test3" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.reactjs.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "test4" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.reactjs1.id
  port             = 80
}
