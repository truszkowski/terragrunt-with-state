terraform {
	source = "./"
}

inputs = {
	my_pet = "giant-fish"
}

#remote_state {
#	backend = "s3"
#	generate = {
#		path      = "backend.tf"
#		if_exists = "overwrite"
#	}
#	config = {
#		bucket                 = "terragrunt-testing-fixme"
#		key                    = "opentofu/simple.tfstate"
#		region                 = "us-east-1"
#		encrypt                = true
#		dynamodb_table         = "spacelift-terragrunt-dynamodb"
#		skip_bucket_versioning = true
#	}
#}
