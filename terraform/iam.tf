resource "aws_iam_role" "ecs_task_execution_role" {
  name = "ecs_task_execution_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = ["ecs.amazonaws.com", "ecs-tasks.amazonaws.com"]
        }
      },
    ]
  })


}

resource "aws_iam_role_policy" "ecs_task_execution_role_policy" {
  name   = "policy-8675309"
  role   = aws_iam_role.ecs_task_execution_role.id
  policy = data.aws_iam_policy_document.inline_policy.json
}

data "aws_iam_policy_document" "inline_policy" {
  statement {
    actions   = ["ecr:*", "logs:*", "cloudwatch:*", "ecs:*"]
    resources = ["*"]
  }
}