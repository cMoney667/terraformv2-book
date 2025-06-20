output "address" {
  value = module.database_instance.address
  description = "Connect to the database at this endpoint"
}
output "port" {
  value = module.database_instance.port
  description = "The port the database is listening on"
}