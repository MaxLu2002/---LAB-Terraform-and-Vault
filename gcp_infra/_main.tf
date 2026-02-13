module vpc {
  source = "./modules/vpc"
  labels = var.labels

  vpc_region = var.vpc_region
  vpc_cidr   = var.vpc_cidr
}

module firewall {
  source = "./modules/firewall_allow_myip_only"
  labels = var.labels
  depends_on = [ module.vpc ]

  firewall_name = "${var.labels["builder"]}-allow-admin-access" 
  vpc_name =  module.vpc.output.name
}


module "gce-webserver" {
  source = "./modules/gce"
  labels = var.labels
  depends_on = [ module.firewall ]

  gce_name = "${var.gce_name}-webserver"
  gce_type = "public"
  gce_image = var.gce_image
  gce_machine_type = var.gce_machine_type
  gce_subnet = module.vpc.output.public_subnet_self_link
  gce_region = var.vpc_region
  gce_zone = var.gce_zone
  
  os_login = "false" 
}

module "gce-webserver-2" {
  source = "./modules/gce"
  labels = var.labels
  depends_on = [ module.firewall ]

  gce_name = "${var.gce_name}-webserver-2"
  gce_type = "public"
  gce_image = var.gce_image
  gce_machine_type = var.gce_machine_type
  gce_subnet = module.vpc.output.public_subnet_self_link
  gce_region = var.vpc_region
  gce_zone = "b"
  
  os_login = "false" 
}


