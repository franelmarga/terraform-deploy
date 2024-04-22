
# Global variables

env = "dev"

env_tags = {
  Environment = "development"
}

region = "us-east-1"

vpc_cidr = "10.0.0.0/16"

# CIDR block for the public subnets

public_subnets_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

# CIDR block for the private subnets

private_subnets_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

# NAT gateways are expensive, so we can choose to create them or not.

create_nat_gateway = true


public_inbound_acl_rules = [
  {
    rule_number = 100
    rule_action = "allow"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 110
    rule_action = "allow"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 120
    rule_action = "allow"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 130
    rule_action = "allow"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number     = 140
    rule_action     = "allow"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    ipv6_cidr_block = "::/0"
  },
]

public_outbound_acl_rules = [
  {
    rule_number = 100
    rule_action = "allow"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 110
    rule_action = "allow"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 120
    rule_action = "allow"
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_block  = "10.0.100.0/22"
  },
  {
    rule_number = 130
    rule_action = "allow"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_block  = "10.0.100.0/22"
  },
  {
    rule_number = 140
    rule_action = "allow"
    icmp_code   = -1
    icmp_type   = 8
    protocol    = "icmp"
    cidr_block  = "10.0.0.0/22"
  },
  {
    rule_number     = 150
    rule_action     = "allow"
    from_port       = 90
    to_port         = 90
    protocol        = "tcp"
    ipv6_cidr_block = "::/0"
  },
]

private_inbound_acl_rules = [
  {
    rule_number = 100
    rule_action = "allow"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 110
    rule_action = "allow"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 120
    rule_action = "allow"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 130
    rule_action = "allow"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number     = 140
    rule_action     = "allow"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    ipv6_cidr_block = "::/0"
  },
]

private_outbound_acl_rules = [
  {
    rule_number = 100
    rule_action = "allow"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 110
    rule_action = "allow"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 120
    rule_action = "allow"
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_block  = "10.0.100.0/22"
  },
  {
    rule_number = 130
    rule_action = "allow"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_block  = "10.0.100.0/22"
  },
  {
    rule_number = 140
    rule_action = "allow"
    icmp_code   = -1
    icmp_type   = 8
    protocol    = "icmp"
    cidr_block  = "10.0.0.0/22"
  },
  {
    rule_number     = 150
    rule_action     = "allow"
    from_port       = 90
    to_port         = 90
    protocol        = "tcp"
    ipv6_cidr_block = "::/0"
  },
]

