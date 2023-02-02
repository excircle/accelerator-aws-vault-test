module "accelerator_aws_vault" {
  source = "../../"

  application_prefix          = "accelerator-vault"
  node_count                  = 3
  vault_seal_type             = "awskms"
  region                      = "us-east-1"
  network                     = "vpc-0efb25cfc7515c021"
  subnetworks                 = ["subnet-0c1f56a245c942dc6", "subnet-083d9b46582281e7f"]
  ami_image                   = "ami-04505e74c0741db8d"
  vault_license_secret        = "arn:aws:secretsmanager:us-east-1:849506427193:secret:accelerator-aws-vault-license-ZFKi99"
  vault_ca_bundle_secret      = "arn:aws:secretsmanager:us-east-1:849506427193:secret:accelerator-aws-vault-ca-certificate-CRuezV"
  vault_signed_cert_secret    = "arn:aws:secretsmanager:us-east-1:849506427193:secret:accelerator-aws-vault-certificate-SSNb6Y"
  vault_private_key_secret    = "arn:aws:secretsmanager:us-east-1:849506427193:secret:accelerator-aws-vault-private-key-JB5lWN"
  machine_key_pair            = "accelerator-aws-vault"
  aws_kms_key_id              = "dfc5e36e-23ad-4f2c-921e-b0a4b4f373a9"
  vault_leader_tls_servername = "vault.hashicorp.com"
}