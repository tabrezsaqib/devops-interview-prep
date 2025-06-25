provider "aws" {
  region = var.region
}

resource "aws_eks_cluster" "example" {
  name     = "example-cluster"
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_node_group" "example_nodes" {
  cluster_name    = aws_eks_cluster.example.name
  node_group_name = "example-nodes"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids
  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
