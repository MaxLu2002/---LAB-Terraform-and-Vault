output infra{
  value = {
    gcloud_login_command = <<-EOT
    
      gcloud auth login # 要輸入帳號密碼登入IAM帳號
      gcloud config set project ${var.project_id} 
      gcloud compute ssh ${module.gce-webserver.output.name} --zone=${module.gce-webserver.output.zone} --quiet   
  
    EOT

  }
}