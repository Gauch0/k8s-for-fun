# IAM Role for EKS Node Group
resource "aws_iam_role" "eks_nodegroup_node" {
    name = "${local.name}-eks-nodegroup-node-role"

    assume_role_policy = jsondecode({
        Statement = [{
            Action = "sts:AssumeRole"
            Effect = "Allow"
            Principal = {
                Service = "ec2.amazonaws.com"
            }
        }]
        Version = "2012-10-17"
    })
}

resource "aws_iam_role_policy_attachment" "eks-AmazonEKSWorkerNodePolicy" {
    role       = aws_iam_role.eks_nodegroup_node.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "eks-AmazonEKS_CNI_Policy" {
    role       = aws_iam_role.eks_nodegroup_node.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

resource "aws_iam_role_policy_attachment" "eks-AmazonEC2ContainerRegistryReadOnly" {
    role       = aws_iam_role.eks_nodegroup_node.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

