packer {
  required_plugins {
    azure = {
      source  = "github.com/hashicorp/azure"
      version = ">= 1.0.0"
    }
  }
}

source "azure-arm" "ubuntu" {
  managed_image_name                = "hardened-ubuntu-image"
  managed_image_resource_group_name = "rg-hardened-images"
  os_type                           = "Linux"
  image_publisher                   = "Canonical"
  image_offer                       = "0001-com-ubuntu-server-jammy"
  image_sku                         = "22_04-lts"
  location                          = "East US"
}

build {
  name    = "azure-hardened-image"
  sources = ["source.azure-arm.ubuntu"]
  provisioner "ansible" {
    playbook_file = "../ansible/playbooks/golden-image.yml"
  }
}
