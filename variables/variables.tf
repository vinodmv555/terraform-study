# 1. string 
variable "string-var" {
    description = "string variable"
    type = string
    default = "/tmp/variable"  
}

# 2. integer 
variable "int-var" {
    description = "Integer variable"
    type = number
    default = 5
}

# 3. boolean 
variable "bool-var" {
    description = "bool variable example"
    type = bool
    default = false  
}

# List variable (string)- 	A list is a numbered collection of values. List uses same data type. 
variable "list-var-str" {
    description = "List variable example"
    type = list(string)
    default = ["Mr0", "Mrs1", "Sir2"]
}

# List variable (Integer)- 	A list is a numbered collection of values. List uses same data type. 
variable "list-var-int" {
    description = "List variable example"
    type = list(number)
    default = [1, 2, 3, 4]
}

# map varible - Options map(number), map(string)
variable "map-var" {
    description = "Map variable example"
    type = map
    default = {
        "statement1" = 2
        "statement2" = "We love Animals"
    }
}

# set variable - Set cannot have duplicate variable 
variable "set-var" {
  description = "Set variable example"
  type = set(string)
  default = ["vinod", "Vedha", "Nidhi"]
}

# Object variable 
variable "object-var" {
    description = "Object variable example"
    type = object({
        name = string
        color = string
        age = number
        food = list(string)
        fav_pet = bool 
    })

    default = { 
        name = "bella"
        color = "brown"
        age =   7
        food  = ["fish", "chicken", "turkey"]
        fav_pet = true 
    }      
}

# Tuple variable example - can have multiple data types. 
variable "tuple-var" {
    description = "Tuple variable example"
    type = tuple([string,number,bool])
    default = ["cat", 7, true]

}