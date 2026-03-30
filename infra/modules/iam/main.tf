resource "aws_iam_user" "desafio-aquarela-user" {
  name = "desafio_aquarela_user"
}

resource "aws_iam_user_policy_attachment" "desafio-aquarela-user-policy"{
    user = aws_iam_user.desafio-aquarela-user.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}