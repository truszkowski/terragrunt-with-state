generate "backend" {
	path = "backend.tf"
	if_exists = "overwrite_terragrunt"
	contents = <<EOF
terraform {
	backend "remote" {
		hostname = "${get_env("REMOTE_HOSTNAME", "spacelift.io")}"
		organization = "${get_env("TF_VAR_spacelift_account_name")}"

		workspaces {
			name = "${get_env("TF_VAR_spacelift_stack_id")}-${lower(basename(path_relative_to_include()))}"
		}
	}
}
EOF
}
