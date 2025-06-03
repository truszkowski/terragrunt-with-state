variable my_pet {
	type = string
}

resource random_pet pet {
	length = 1
	separator = " "
}

output my_pet {
	value = "${random_pet.pet.id} ${var.my_pet}"
}

