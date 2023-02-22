resource "random_pet" "repo_01" {
  keepers = {
    # Generate a new pet name each time
    time = timestamp()
  } 
}

output "repo_01_pet" {
  value = resource.random_pet.repo_01.id
}