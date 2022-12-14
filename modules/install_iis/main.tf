resource "azurerm_virtual_machine_extension" "vm-extensions" {
  name                 = "vm-ext-webserver"
  virtual_machine_id   = var.vm_id
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.10"

  settings = <<SETTINGS
    {
        "commandToExecute": "powershell Add-WindowsFeature Web-Server"
    }
SETTINGS
}

variable "vm_id" {
  }