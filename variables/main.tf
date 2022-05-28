# Used string and interger in local_file action 
resource "local_file" "test" {
    filename = var.string-var
    content = var.int-var
}

#Display Bool 
output "booloutput" {
    value = var.bool-var
}

# Display List (String)
output "list-str" {
    value = var.list-var-str[0]
}

# Display List (Integer)
output "list-int" {
    value = var.list-var-int[0]
}

# Display Map
output "map-result" {
    value = var.map-var["statement1"]
}

# Display Set
output "set-result" {
    value = var.set-var
}

# Display Object variable 
output "object-result" {
    value = var.object-var.color
}

# Display tuple variable 
output "tuple-variable" {
    value = var.tuple-var[0] 
}