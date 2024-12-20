resource "local_file" "pet" {
filename = "pets.txt"
content = "My cat is MR.CAT"
depends_on = [
random_pet.mypet
] 
} 
resource "random_pet" "mypet" {
prefix = "MR"
separator = "."
length = "1"
}
