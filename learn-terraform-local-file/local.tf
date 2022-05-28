resource "local_file" "pet" {
  filename = var.filename-pet
  content  = var.pet-content
}

resource "local_file" "cat" {
    filename = var.filename-cat
    content = var.cat-content
}

resource "local_file" "pet_count" {
    filename = var.filename-petcount
    content = var.petcount-content
}