resource random_pet pet {
	length = 5
}

variable my_pet {
	type = string
}

output pet {
	value = random_pet.pet.id
}

output my_pet {
	value = "${var.my_pet}"
}
