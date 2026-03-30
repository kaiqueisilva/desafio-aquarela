resource "aws_iam_user" "desafio_aquarela_user" {
  name = "desafio_aquarela_user"
}

resource "aws_iam_user_policy_attachment" "desafio_aquarela_user_policy" {
  user       = aws_iam_user.desafio_aquarela_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}