module "vmss" {
  source = "git::https://git.panasonic.aero/global-it/sysops/terraform/azurerm_linux_virtual_machine_scale_set.git"

  vm_name                = "test-lvms"
  location               = "westus2"
  resource_group_name    = "nonprod-wus2-terraform-testing-rg"
  vm_size                = "Standard_D2s_v3"
  instance_count         = 2
  admin_username         = "test"
  admin_password         = "Welcome12345"
  image_publisher        = "Canonical"
  image_offer            = "0001-com-ubuntu-server-jammy"
  image_sku              = "22_04-lts"
  image_version          = "latest"
  network_interface      = "network_interface"
  subnet_id              = "/subscriptions/1a9df11b-5af4-4347-af5b-b385409508d0/resourceGroups/nonprod-westus2-network-rg/providers/Microsoft.Network/virtualNetworks/10.175.16.0_21-nonprod-westus2-vnet/subnets/10.175.19.64_28-nonprod-westus2-servicenow-snet"
  tags = local.tags
}