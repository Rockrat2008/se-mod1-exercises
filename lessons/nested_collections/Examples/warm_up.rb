animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}
puts animals["dogs"]
# 1. return the value of dogs
animals["parakeets"] = 3
puts animals
# 2. add 3 parakeets
animals["cats"] += 2
puts animals
# 3. increase the amount of cats by 2

pet_names = ["Fela", "Spot", "Patch", "Willy"]

pet_names.push("Claude")
puts pet_names
# 1. add “Claude” to the end of the array
puts pet_names.first
# 2. access the first name in the list
puts pet_names.last
# 3. access the last name in the list
pet_names.shift
puts pet_names
# 4. remove “Fela” from the list
