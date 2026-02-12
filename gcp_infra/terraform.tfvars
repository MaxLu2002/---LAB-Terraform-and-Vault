# --------------------------------------------------------
# infra project settings
# --------------------------------------------------------
project_id = "qwiklabs-gcp-03-d0121e0aecc1"
region = "us-west1"
labels = {
    builder = "max"
    stage   = "dev"
    env     = "lab"
    source = "terraform_vault"
}

# --------------------------------------------------------
# vpc settings
# --------------------------------------------------------
vpc_region = "us-central1"
vpc_cidr   = "10.0.0.0/16"

# --------------------------------------------------------
# gce settings
# --------------------------------------------------------
gce_name  = "gce-instance"
gce_image = "debian-cloud/debian-11"
gce_machine_type = "e3-micro"
gce_zone  = "c"




