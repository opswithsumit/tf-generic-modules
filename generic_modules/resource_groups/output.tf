/*output "rg_name" {
  value = values(azurerm_resource_group.rgsm)[0].name
  
}*/

/*output "location" {
  value = values(azurerm_resource_group.rgsm)[0].location
}*/

/*output "rg_details" {
  value = {
    for key, value in azurerm_resource_group.rgsm :
  key=>{
    name=value.name
    location=value.location
  }
  
  }
  
}*/