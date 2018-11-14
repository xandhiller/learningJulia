contacts = Dict("me" => "0412341234", "you" => "0456785678")

newline = "\n" # With commented lines below, this variable goes unused but luck-
    # ily there's no warning from the compiler/CLI about this in a normal run
    # mode 

#println(contacts*newline) # Doesn't work
#println(String(contacts)*newline) # Doesn't work

contacts["Tom Cruise"] = "0472472489"

println(contacts)

pop!(contacts, "Tom Cruise")

println(contacts)

# What happens when we pop a non-existent entry?
#pop!(contacts, "Forrest Gump")


println(contacts)
