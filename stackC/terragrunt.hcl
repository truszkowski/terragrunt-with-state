include "backend" {
  path = find_in_parent_folders("backend.hcl")
}

terraform {
	source = "./"
}

inputs = {
	my_pet = "spider"
}


